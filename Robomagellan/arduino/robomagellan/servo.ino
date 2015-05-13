/**
 * @brief       Servo functions for Robo-Magellan
 * 
 * @file        servo.ino
 * @author      Chad Condon
 * @date        2014-05-28
 * 
 * @details     Initializes and updates the steering servos.
 */

/* --Includes-- */
#include <Servo.h>                      // for servo control

/* --Constants-- */
const int PIN_SERVO_F_L = 5;            /**< front left steering servo PWM */
const int PIN_SERVO_F_R = 6;            /**< front right steering servo PWM */
const int PIN_SERVO_R_L = 7;            /**< rear left steering servo PWM */
const int PIN_SERVO_R_R = 8;            /**< rear right steering servo PWM */
const int STRAIGHT = 90;                /**< angle of forward steering */
const int PIVOT_ANGLE = 45;             /**< angle of pivot steering @TODO find angle */

/* --Declarations-- */
Servo servoFL;                          /**< front left wheel steering servo */
Servo servoFR;                          /**< front right wheel steering servo */
Servo servoRL;                          /**< rear left wheel steering servo */
Servo servoRR;                          /**< rear right wheel steering servo */

/**
 * @brief   Initializes steering servos
 */
void initServo()
{
    servoFL.attach(PIN_SERVO_F_L);
    servoFR.attach(PIN_SERVO_F_R);
    servoRL.attach(PIN_SERVO_R_L);
    servoRR.attach(PIN_SERVO_R_R);
    Serial.println("servos initialized");
}

/**
 * @brief   Sets steering to turn in given angle.
 * @details Offsets the steering of each wheel by the angle provided.
 *          Front wheels are turned to the right for positive angles and
 *          rear wheels are turned to the left.
 * 
 * @param   angle   the angle by which to offset the steering. Positive angles
 *                  turn right and negative angles turn left. The servos cannot
 *                  accept values greater than 89, but this will rotate wheels
 *                  perpendicular to the vehicle. The practical maximum is
 *                  likely much lower.
 */
void steer(int angle)
{
    servoFL.write(STRAIGHT + angle);
    servoFR.write(STRAIGHT + angle);
    servoRL.write(STRAIGHT - angle);
    servoRR.write(STRAIGHT - angle);
}

/**
 * @brief   Sets steering for a pivot around an internal axis.
 * @details Sets the steering of each wheel such that they are tangential along
 *          a single circle. Note that this function does not actually set
 *          speeds and directions of the motors.
 */
void setPivot()
{
    servoFL.write(STRAIGHT + PIVOT_ANGLE);
    servoFR.write(STRAIGHT - PIVOT_ANGLE);
    servoRL.write(STRAIGHT - PIVOT_ANGLE);
    servoFL.write(STRAIGHT + PIVOT_ANGLE);
}
