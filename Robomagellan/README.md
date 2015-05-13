Robo-Magellan
=============

IEEE University of Washington Tacoma Student Branch

This is the software used to control the hardware interface of our Robo-Magellan robot.
Code is all written for the Arduino Mega 2560, selected for its increased number of PWM ports, multiple serial lines, and multiple hardware timers.

##Schematic

![Schematic](https://raw.githubusercontent.com/thetic/robomagellan/master/documentation/Circuitry_schem.png?token=1388052__eyJzY29wZSI6IlJhd0Jsb2I6dGhldGljL3JvYm9tYWdlbGxhbi9tYXN0ZXIvZG9jdW1lbnRhdGlvbi9DaXJjdWl0cnlfc2NoZW0ucG5nIiwiZXhwaXJlcyI6MTQwMTkzMzgzOX0%3D--dcdc4def421dbfcada3e21fc2da92a1697be33e1)

##Dependencies

Required third-party libraries include:
* [Adafruit GPS](https://github.com/adafruit/Adafruit-GPS-Library)
* [Bounce](https://github.com/thomasfredericks/Bounce-Arduino-Wiring)
* [Arduino library for the Pololu Dual VNH5019 Motor Driver Shield](https://github.com/sm11963/dual-vnh5019-motor-shield) (forked from Pololu to add selectable PWM pins)
* [CmdMessenger](https://github.com/thijse/Arduino-Libraries/)

See the [Arduino site](http://arduino.cc/en/Guide/Libraries) for instructions on installing libraries.