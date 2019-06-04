/*
Remixed version of "Itty bitty inky blinky wife happiness machiney" by Chrismettal, original design by Anreas Spiess.
Edited for use with etched PCB "Tasker v0.3"
PCB includes PCF8574 port expander (because there was space left) over i2c but is currently not used in sourcecode

Documentation: github.com/chrismettal/Tasker



Original copyright information from master still applies:

  Copyright <2018> <Andreas Spiess>

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
  to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  DEALINGS IN THE SOFTWARE.

  Based on:

    Google Calendar Integration ESP8266
    Created by Daniel Willi, 2016

    Based on the WifiClientSecure example by
    Ivan Grokhotkov

/end original copyright from master

*/

// from LarryD, Arduino forum
#define DEBUG   //If you comment this line, the DPRINT & DPRINTLN lines are defined as blank.
#ifdef DEBUG    //Macros are usually in all capital letters.
#define DPRINT(...)    Serial.print(__VA_ARGS__)     //DPRINT is a macro, debug print
#define DPRINTLN(...)  Serial.println(__VA_ARGS__)   //DPRINTLN is a macro, debug print with new line
#else
#define DPRINT(...)     //now defines a blank line
#define DPRINTLN(...)   //now defines a blank line
#endif

#include <ESP8266WiFi.h>
#include <Ticker.h>
#include "HTTPSRedirect.h"

Ticker blinker;

//Connection Settings
const char* host = "script.google.com";
const char* googleRedirHost = "script.googleusercontent.com";
const int httpsPort = 443;

unsigned long entryCalender, entryPrintStatus, entrySwitchPressed;
String url;

unsigned long intEntry;


#define UPDATETIME 20000

//Network credentials
const char* ssid = "MyWiFi"; //replace with you ssid
const char* password = "MyPassword"; //replace with your password
//Google Script ID
const char *GScriptIdRead = "MyReadScriptId"; //replace with you gscript id for reading the calendar
const char *GScriptIdWrite = "MyWriteScriptId"; //replace with you gscript id for writing the calendar

//For the Rev_0.3 PCB only 5 events are possible
#define NBR_EVENTS 5

/*These Arrays corrospond with the buttons/tasks that can be displayed. The name of the event has to be
  the same as the calender event. The order of buttons is:
Button:   |  SW5  |  SW4  |  SW3  |  SW2  |  SW1  |
Pin:      |  D7   |  D6   |  D5   |  D4   |  D0   |
Array pos:|  [1]  |  [2]  |  [3]  |  [4]  |  [5]  | */
String  possibleEvents[NBR_EVENTS] = {"unused", "Trash", "Clean Coffeemaker", "Waterchange",  "Feed Fish"};
byte  LEDpins[NBR_EVENTS]    = {D7, D6, D5, D4, D0};
bool switchPressed[NBR_EVENTS];
unsigned long switchOff = 0;

//Enumerator for the possible states of every task
enum taskStatus {
  none,
  due,
  done
};

taskStatus taskStatus[NBR_EVENTS];

String calendarData = "";
bool calenderUpToDate;

//Connect to wifi
void connectToWifi() {
  Serial.println();
  Serial.print("Connecting to wifi: ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("WiFi connected ");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  // Use HTTPSRedirect class to create TLS connection
  HTTPSRedirect client(httpsPort);

  Serial.print("Connecting to ");
  Serial.println(host);
  bool flag = false;
  for (int i = 0; i < 5; i++) {
    int retval = client.connect(host, httpsPort);
    if (retval == 1) {
      flag = true;
      break;
    }
    else  Serial.println("Connection failed. Retrying...");
    if (!flag) {
      Serial.print("Could not connect to server: ");
      Serial.println(host);
      Serial.println("Exiting...");
      ESP.reset();
    }
  }
  Serial.println("Connected to Google");
}

void printStatus() {
  for (int i = 0; i < NBR_EVENTS; i++) {
    Serial.print("Task ");
    Serial.print(i);
    Serial.print(" Status ");
    Serial.println(taskStatus[i]);
  }
  Serial.println("----------");
}

void getCalendar() {
  Serial.println("Start Request");
  HTTPSRedirect client(httpsPort);
  unsigned long getCalenderEntry = millis();
  while (!client.connected() && millis() < getCalenderEntry + 8000) {
    Serial.print(".");
    client.connect(host, httpsPort);
  }

  //Fetch Google Calendar events
  url = String("/macros/s/") + GScriptIdRead + "/exec";
  calendarData = client.getData(url, host, googleRedirHost);
  Serial.print("Calendar Data---> ");
  Serial.println(calendarData);
  calenderUpToDate = true;
  yield();
}

void createEvent(String title) {
  Serial.println("Start Write Request");
  HTTPSRedirect client(httpsPort);
  if (!client.connected()) client.connect(host, httpsPort);
  // Create event on Google Calendar
  url = String("/macros/s/") + GScriptIdWrite + "/exec" + "?title=" + title;
  client.getData(url, host, googleRedirHost);
  Serial.println(url);
  Serial.println("Write Event created ");
  calenderUpToDate = false;
}

void manageStatus() {
  for (int i = 0; i < NBR_EVENTS; i++) {
    switch (taskStatus[i]) {
      case none:
        if (switchPressed[i]) {
          digitalWrite(LEDpins[i], HIGH);
          while (!calenderUpToDate) getCalendar();
          if (!eventHere(i)) createEvent(possibleEvents[i]);
          Serial.print(i);
          Serial.println(" 0-->1");
          //getCalendar();
          taskStatus[i] = due;
        } else {
          if (eventHere(i)) {
            digitalWrite(LEDpins[i], HIGH);
            Serial.print(i);
            Serial.println(" 0-->1");
            taskStatus[i] = due;
          }
        }
        break;
      case due:
        if (switchPressed[i]) {
          digitalWrite(LEDpins[i], LOW);
          Serial.print(i);
          Serial.println(" 1-->2");
          taskStatus[i] = done;
        }
        break;
      case done:
        if (calenderUpToDate && !eventHere(i)) {
          digitalWrite(LEDpins[i], LOW);
          Serial.print(i);
          Serial.println(" 2-->0");
          taskStatus[i] = none;
        }
        break;
      default:
        break;
    }
    switchPressed[i] = false;
  }
  yield();
}

bool eventHere(int task) {
  if (calendarData.indexOf(possibleEvents[task], 0) >= 0 ) {
        //Serial.print("Task found ");
        //Serial.println(task);
    return true;
  } else {
       //Serial.print("Task not found ");
       //Serial.println(task);
    return false;
  }
}

void handleInterrupt() {
  //don't know if intEntry is even useful for anything now
  intEntry = millis();
  //measure the voltage on the analog pin and calculate which button was pressed
  int reading = analogRead(A0);
  //hi needs to be a float here because it is the result of a floating point calculation.
  //will be rounded down to an integer in the next step
  float hi = (reading / (1024.0 / NBR_EVENTS) - 0.5);

  //if some button was pressed..
  if (hi >= 0) {
    //and if no button was pressed for the last 10 ticker cycles
    if (switchOff > 10) {
      //get the number of the pressed button and set the corrosponding variable
      int button = (int)hi;
      switchPressed[button] = true;
    }
    //always reset the "no button pressed" duration during each press
    switchOff = 0;
  }
  //if no button was pressed count up switchOff
  else switchOff++;
}

void setup() {
  //start serial communication
  Serial.begin(19200);
  //attach the interrupt routine to fire every 50ms
  blinker.attach_ms(50, handleInterrupt);
  //start wifi connection
  connectToWifi();
  //reset all LEDs, tasks and buttons
  for (int i = 0; i < NBR_EVENTS; i++) {
    pinMode(LEDpins[i], OUTPUT);
    taskStatus[i] = none;
    switchPressed[i] = false;
  }
  //initial calendar update
  //every calendar update saves the time it was updated for cyclic updating
  getCalendar();
  entryCalender = millis();
}


void loop() {
  //Update the calendar data every "updatetime" duration
  if (millis() > entryCalender + UPDATETIME) {
    getCalendar();
    entryCalender = millis();
  }
  manageStatus();
  if (millis() > entryPrintStatus + 5000) {
    printStatus();
    entryPrintStatus = millis();
  }
}


