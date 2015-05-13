/**
 * @brief       Motor functions for Robo-Magellan
 * 
 * @file        motor.ino
 * @author      Chad Condon
 * @date        2014-05-28
 * 
 * @details     Initializes and controls the motors.
 *              Checks for and reports faults.
 *              
 * @see         http://www.pololu.com/product/2507/
 */

/* --Includes-- */
#include <DualVNH5019MotorShield.h>     // for motor control

/* --Constants-- */
const int PIN_MOTOR_R_R_CS = A0;        /**< front left motor current sense */
const int PIN_MOTOR_F_R_CS = A1;        /**< front right motor current sense */
const int PIN_MOTOR_F_L_CS = A2;        /**< rear left motor current sense */
const int PIN_MOTOR_R_L_CS = A3;        /**< rear right motor current sense */
const int PIN_MOTOR_R_L_PWM = 9;        /**< front left motor PWM */
const int PIN_MOTOR_F_L_PWM = 10;       /**< front right motor PWM */
const int PIN_MOTOR_F_R_PWM = 11;       /**< rear left motor PWM */
const int PIN_MOTOR_R_R_PWM = 12;       /**< rear right motor PWM */
const int PIN_MOTOR_R_L_DIAG_EN = 22;   /**< front left motor diag/enable */
const int PIN_MOTOR_F_L_DIAG_EN = 23;   /**< front right motor diag/enable */
const int PIN_MOTOR_F_R_DIAG_EN = 24;   /**< rear left motor diag/enable */
const int PIN_MOTOR_R_R_DIAG_EN = 25;   /**< rear right motor diag/enable */
const int PIN_MOTOR_R_L_IN_A = 26;      /**< front left motor input A */
const int PIN_MOTOR_F_L_IN_A = 27;      /**< front right motor input A */
const int PIN_MOTOR_F_R_IN_A = 28;      /**< rear left motor input A */
const int PIN_MOTOR_R_R_IN_A = 29;      /**< rear right motor input A */
const int PIN_MOTOR_R_L_IN_B = 30;      /**< front left motor input B */
const int PIN_MOTOR_F_L_IN_B = 31;      /**< front right motor input B */
const int PIN_MOTOR_F_R_IN_B = 32;      /**< rear left motor input B */
const int PIN_MOTOR_R_R_IN_B = 33;      /**< rear right motor input B */
const int MAX_SPEED = 400;              /**< top motor power magnitude*/

/* --Declarations-- */
DualVNH5019MotorShield frontMotors;     /**< front motor controller */
DualVNH5019MotorShield rearMotors;      /**< rear motor controller */

/**
 * @brief Instatiates and initialized motor drivers.
 */
void initMotor()
{
    // TODO remap to left/right motor driver assignments
    frontMotors = DualVNH5019MotorShield(
        PIN_MOTOR_R_L_IN_A,
        PIN_MOTOR_R_L_IN_B, 
        PIN_MOTOR_R_L_DIAG_EN,
        PIN_MOTOR_R_L_CS, 
        PIN_MOTOR_R_L_PWM,
        PIN_MOTOR_F_L_IN_A,
        PIN_MOTOR_F_L_IN_B, 
        PIN_MOTOR_F_L_DIAG_EN,
        PIN_MOTOR_F_L_CS, 
        PIN_MOTOR_F_L_PWM
    );
    rearMotors = DualVNH5019MotorShield(
        PIN_MOTOR_F_R_IN_A,
        PIN_MOTOR_F_R_IN_B, 
        PIN_MOTOR_F_R_DIAG_EN,
        PIN_MOTOR_F_R_CS, 
        PIN_MOTOR_F_R_PWM,
        PIN_MOTOR_R_R_IN_A,
        PIN_MOTOR_R_R_IN_B, 
        PIN_MOTOR_R_R_DIAG_EN,
        PIN_MOTOR_R_R_CS, 
        PIN_MOTOR_R_R_PWM
    );

    frontMotors.init();
    rearMotors.init();
    Serial.println("motors initialized");
}

/**
 * @brief Checks for motor faults
 * @details Checks for faults in the motors and writes faults to serial.
 */
void chkMotor()
{
    if (frontMotors.getM1Fault()) {
        Serial.println("FAULT: front left motor");
    }
    if (frontMotors.getM2Fault()) {
        Serial.println("FAULT: front right motor");
    }
    if (rearMotors.getM1Fault()) {
        Serial.println("FAULT: rear left motor");
    }
    if (rearMotors.getM2Fault()) {
        Serial.println("FAULT: rear right motor");
    }
}

/**
 * @brief   Sets motors speed.
 * @details Sets the motor's speed to the given percentage.
 * 
 * @param   percent     The percentage of the maximum motor speed to set.
 *                      Accepts values from -99 to 99. Positive numbers set a
 *                      forward speed. Negative numbers set a backwards speed.
 */
void setSpeed(int percent)
{
    int speed = percentToSpeed(percent);
    frontMotors.setBrakes(0, 0);
    rearMotors.setBrakes(0, 0);
    frontMotors.setSpeeds(speed, speed);
    rearMotors.setSpeeds(speed, speed);
}

/**
 * @brief   Stops motors
 * @details Applies brakes and reduces speed to zer0.
 */
void stopMotors()
{
    frontMotors.setBrakes(MAX_SPEED / 2, MAX_SPEED / 2);
    rearMotors.setBrakes(MAX_SPEED / 2, MAX_SPEED / 2);
    setSpeed(0);
    delay(100);
    frontMotors.setBrakes(MAX_SPEED, MAX_SPEED);
    rearMotors.setBrakes(MAX_SPEED, MAX_SPEED);
    
}

/**
 * @brief   Sets opposite speed on left and right.
 * @details Sets speed of each motor such that the right motors are opposite
 *          of the left motors.
 * 
 * @param   percent     The percentage of the maximum motor speed to set.
 *                      Accepts values from -99 to 99. Positive numbers set a
 *                      clockwise speed. Negative numbers set a counterclockwise
 *                      speed.
 */
void setPivotSpeed(int percent)
{
    int speed = percentToSpeed(percent);
    frontMotors.setBrakes(0, 0);
    rearMotors.setBrakes(0, 0);
    frontMotors.setSpeeds(speed, -speed);
    rearMotors.setSpeeds(speed, -speed);
}

/**
 * @brief   Converts a speed percentage to a speed
 * 
 * @param   percent     the percent of maximum motor speed to be calculated
 * @return              The given percentage of the maximum motor speed
 */
int percentToSpeed(int percent)
{
    return map(percent, -99, 99, -MAX_SPEED, MAX_SPEED);
}
