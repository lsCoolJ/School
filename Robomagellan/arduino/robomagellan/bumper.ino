/**
 * @brief       Bummper functions for Robo-Magellan
 * 
 * @file        bumper.ino
 * @author      Chad Condon
 * @date        2014-05-28
 * 
 * @details     Initializes and updates the bumper limit switches.
 *              Switches are debounced.
 *              Provides for commands to write sensor data to serial.
 */

/* --Includes-- */
#include <Bounce2.h>                    // for debouncing bumpers

/* --Constants-- */
const int PIN_BUMPER_L = 34;            /**< left bumper switch */
const int PIN_BUMPER_R = 35;            /**< right bumper switch */

/* --Declarations-- */
Bounce bumperL = Bounce();              /**< left bumper limit switch */
Bounce bumperR = Bounce();              /**< right pumper limit switch */
boolean leftWas = true;                 /**< bumper status flags */
boolean rightWas = true;                /**< bumper status flags */

/**
 * @brief Initializes debounced bumper switches
 */
void initBumper()
{
    pinMode(PIN_BUMPER_L, INPUT);
    digitalWrite(PIN_BUMPER_L, HIGH);
    bumperL.attach(PIN_BUMPER_L);
    bumperL.interval(5);

    pinMode(PIN_BUMPER_R, INPUT);
    digitalWrite(PIN_BUMPER_R, HIGH);
    bumperR.attach(PIN_BUMPER_R);
    bumperR.interval(5);
    Serial.println("bumpers initialized");
}

/**
 * @brief   Checks bumper status
 * @details Updates the states of the bumpers and, if there has been a change
 *          prints the status to serial.
 */
void chkBumper()
{
    bumperL.update();
    bumperR.update();

    boolean leftIs = bumperL.read();
    boolean rightIs = bumperR.read();

    if (leftIs != leftWas || rightIs != rightWas) {
        if (leftIs == LOW && rightIs == LOW) {
            Serial.println("Bumper: front");
        } else if (leftIs == LOW) {
            Serial.println("Bumper: left");
        } else if (rightIs == LOW) {
            Serial.println("Bumper: right");
        } else {
            Serial.println("Bumper: clear");
        }
    }

    leftWas = leftIs;
    rightWas = rightIs;
}
