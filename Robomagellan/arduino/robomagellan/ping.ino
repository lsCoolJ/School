/**
 * @brief       Ultrasonic distance sensor functions for Robo-Magellan
 * 
 * @file        ping.ino
 * @author      Chad Condon
 * @date        2014-05-28
 * 
 * @details     Initializes and updates the ultrasonic distance sensor modules.
 *              Provides for commands to write sensor data to serial.
 *              Uses 8 HC-SR04 Ultrasonic Sensors.
 * 
 * @see         http://www.hobbyking.com/hobbyking/store/__31136__ultrasonic_module_hc_sr04_arduino.html
 * 
 */

/* --Constants-- */
const int PIN_ULTRASONIC_ECHO[] = {          /**< sensor echos */
    38, 40, 42, 44, 46, 48, 50, 52
};
const int PIN_ULTRASONIC_TRIG[] = {          /**< sensor triggers */
    39, 41, 43, 45, 47, 49, 51, 53
};

int numUltrasonics;

/**
 * @brief Initializes ultrasonic sensors
 */
void initPing()
{
    numUltrasonics = sizeof(PIN_ULTRASONIC_ECHO) / sizeof(int);
    for(int i = 0; i < numUltrasonics; i++) {
        pinMode(PIN_ULTRASONIC_ECHO[i], INPUT);
        pinMode(PIN_ULTRASONIC_TRIG[i], OUTPUT);
    }
    Serial.println("UDS initialized");
}

/**
 * @brief   Activates each sensor and reports its measured distance in
 *          centimeters to serial.
 */
void getPing()
{
    int distances[numUltrasonics];

    for (int i = 0; i < numUltrasonics; i += 2) {
        distances[i] = ping(i);
    }

    for (int i = 1; i < numUltrasonics; i += 2) {
        distances[i] = ping(i);
    }

    for (int i = 0; i < numUltrasonics; i++) {
        Serial.print(distances[i]);
        Serial.print(", ");
    }
    Serial.println();
}

/**
 * @brief   Returns the distance in centimeters from the given sensor
 * 
 * @param   i   the index of the sensor being read
 * @return      the distance measured by the sensor in centimeters
 */
int ping(int i)
{
    long duration;

    digitalWrite(PIN_ULTRASONIC_TRIG[i], LOW); 
    delayMicroseconds(2); 
    digitalWrite(PIN_ULTRASONIC_TRIG[i], HIGH);
    delayMicroseconds(10); 
    digitalWrite(PIN_ULTRASONIC_TRIG[i], LOW);
    duration = pulseIn(PIN_ULTRASONIC_ECHO[i], HIGH);
    return (int) (duration / 58.2);
}