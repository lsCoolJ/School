/**
 * @brief       Robo-Magellan vehicle and sensor driver.
 * 
 * @file        robomag.ino
 * @author      Chad Condon
 * @date        2014-05-25
 * 
 * @details     Provides a serial interface for a computer to interact with the
 *              robot's steering, speed, and sensor input. Uses an Arduino Mega
 *              for its 8 PWM pins and multiple hardware serial capabilities.
 *              
 * @see         https://www.github.com/thetic/robomagellan
 */

/* --Includes-- */
#include <SoftwareSerial.h>                     // for GPS and commands

/* --Constants-- */
const int CMD_BAUD = 9600;            /**< baud rate for receiving commands */
const boolean diagMode = true;

/**
 * @brief   Initialization.
 * @details Initializes pins assignments, modes, libraries, etc.
 */
void setup()
{
    Serial.begin(CMD_BAUD);
    delay(1000);
    initGPS();
    initBumper();
    initMotor();
    initCommand();

}

/**
 * @brief   Operation.
 * @details Controls all hardware I/O.
 */
void loop()
{
    updateGPS();
    chkCommand();
    chkBumper();
    //chkMotor();
}
