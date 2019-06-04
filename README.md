![Tasker_v0.3 Logo](https://github.com/Chrismettal/Tasker/blob/master/img/logo.png)

Reworked version of Reminder with Google Calendar providing the same functionality as the original design, but providing an etched PCB making the build much cleaner and easier while providing a bit more documentation.
The PCB mostly uses SMD parts and includes everything to enable USB-upload just like a Wemos D1 mini for example.

![Tasker_v0.3 PCB](https://github.com/Chrismettal/Tasker/blob/master/img/pcbrender.png)

Based on the original analog version to use 5 Buttons and 5 LEDs with available GPIO.

A PCF8574 port expander is routed over i2c on the PCB but currently not implemented in source code. Does not need to be placed for the rest to function. Could be implemented for further external triggers to set/reset automated functions.

![Built](https://github.com/Chrismettal/Tasker/blob/master/img/built.jpg)

# Build Notes

Upload the gerber files made to your favourite PCB shop (or write me, i have spares).
The micro usb footprint is the "Wuerth Micro-B #629105150521" type, but a lot of chinese noname ones fit. If you can't get "the real thing" just look for a pack of various sizes. Some will fit.
__Flux it up!__
Start by placing the usb jack first as the CH340G will block your access a bit should you mess up the fine pins of the jack. Then place all the resistors, capacitos, transistors, then the bigger ICs and the crystal.
Only after all SMD parts are placed put in the buttons.

__Double check LED, C6 and C9 polarity!__

- C6 and C9 are tantalum caps that explode violently when you get their polarity wrong. The stripe (positive) should point to the C6/C9 writing on the PCB.
- R22 and R23 are optional I2C pullups, should you use something like an LCD over the I2C bus.
- Should you plan to upload code to the ESP before placing it, you could leave out U1, Q1, Q2, C1, C2, R1, R2, R3, R4, Y1.
- It does not matter if you power the device via USB or directly wire in 5 V to the pin header.
- U4 is optional. Should you place it you also have to place R22 and R23 and set an adress via B0, B1, B2.
- P0 - P7 are the in/outputs of U4.
- That cheap, chinese Arduino clone in your drawer is a good source for the CH340G that you forgot to order.
- You could also just order the bigger version of a NodeMCU and steal the ESP, AMS1117-3.3 ,CH340G and S8050s from that if you own a hot air rework station.
- If you are unhappy with the brightness of the LEDs you could change the values of R15 - R19. 

# Case

![CaseTop](https://github.com/Chrismettal/Tasker/blob/master/img/CaseTop.png)
![CaseBot](https://github.com/Chrismettal/Tasker/blob/master/img/CaseBot.png)

The case is 3d printed just like the master, but a lot thinner and i hope more elegant. Any material is fine, no supports needed if you lay the top flat face down.
I use course M2*8 screws to mount the PCB in the upper part as well as screwing the upper part to the lower part, which gets mounted to a wall first.
Like the master you can just put stickers on the case next to the buttons or emboss your tasks into the top part STL.
