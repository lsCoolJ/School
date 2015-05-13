/**
 * @brief       Robo-Magellan sensor driver.
 *
 * @file        robomag.ino
 * @author      Chad Condon
 * @date        2014-09-03
 *
 * @details     Provides a serial interface for a computer to interact with the
 *              robot's steering, speed, and sensor input. Uses an Arduino Mega.
 *
 * @see         https://www.github.com/thetic/robomagellan
 */

/* PREPROCESSOR */
#include <Adafruit_GPS.h>           //!< For Adafruit Ultimate GPS breakout
#include <SoftwareSerial.h>         //!< For making the compiler shut up

#define NUM_UDS 8                   //!< count of ultrasonic distance sensors
#define ECHO_PIN 0                  //!< index of UDS echo pins
#define TRIG_PIN 1                  //!< index of UDS trigger pins
#define DISTANCE 2                  //!< index of UDS readings
#define LEFT_BUMPER 49              //!< left bumper pin
#define MID_BUMPER 51               //!< center bumper pin
#define RIGHT_BUMPER 53             //!< right bumper pin
#define BAUD 9600

/* GLOBAL */
boolean usingInterrupt = false;     //!< interrupt flag
Adafruit_GPS GPS(&Serial1);         //!< Adafruit GPS object
int uds[NUM_UDS][3] = {             //!< UDS pins and readings
    {22,23,0},
    {24,25,0},
    {26,27,0},
    {28,29,0},
    {30,31,0},
    {32,33,0},
    {34,35,0},
    {36,37,0}
};

/**
 * initializes and sets the initial values
 */
void setup()
{
    Serial.begin(BAUD);
    GPS.begin(BAUD);
    GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
    GPS.sendCommand(PGCMD_ANTENNA);
    useInterrupt(true);
    delay(1000);
    Serial1.println(PMTK_Q_RELEASE);
    for (int i = 0; i < 8; i++) {
        pinMode(uds[i][ECHO_PIN], INPUT);
        pinMode(uds[i][TRIG_PIN], OUTPUT);
    }
    pinMode(LEFT_BUMPER, INPUT_PULLUP);
    pinMode(MID_BUMPER, INPUT_PULLUP);
    pinMode(RIGHT_BUMPER, INPUT_PULLUP);
}

SIGNAL(TIMER0_COMPA_vect) {
    char c = GPS.read();
}

uint32_t timer = millis();

void useInterrupt(boolean v) {
    if (v) {
        OCR0A = 0xAF;
        TIMSK0 |= _BV(OCIE0A);
        usingInterrupt = true;
    } else {
        TIMSK0 &= ~_BV(OCIE0A);
        usingInterrupt = false;
    }
}

void loop()
{
    // Update UDS
    for (int i = 0; i < NUM_UDS / 2; i++) {
        read(i);
        read(i + NUM_UDS / 2);
        printAll();
    }
    // Update GPS
    if (!usingInterrupt) {
        char c = GPS.read();
    }
    if (GPS.newNMEAreceived()) {
        if (!GPS.parse(GPS.lastNMEA()))
            return;
    }
    printAll();
}

/**
 * Activates and reads the UDS at the given index
 * @param   sensor  the index of the UDS to be read
 * @return          the distance (in cm) measured by the UDS
 */
int read(int sensor)
{
    digitalWrite(uds[sensor][TRIG_PIN], LOW);
    delayMicroseconds(2);
    digitalWrite(uds[sensor][TRIG_PIN], HIGH);
    delayMicroseconds(10);
    digitalWrite(uds[sensor][TRIG_PIN], LOW);
    return uds[sensor][DISTANCE] = msTocm(pulseIn(uds[sensor][ECHO_PIN], HIGH));
}

/**
 * Converts microseconds into centimeters based on the speed of sound
 * @param   microseconds  the delay read by the UDS
 * @return                the distance in centimeters measured
 */
long msTocm(long microseconds)
{
    return microseconds / 29 / 2;
}

/**
 * Writes all sensor values to serial output  seperated by commas
 */
void printAll()
{
    Serial.print("*");
    Serial.print(digitalRead(LEFT_BUMPER));
    Serial.print(",");
    Serial.print(digitalRead(MID_BUMPER));
    Serial.print(",");
    Serial.print(digitalRead(RIGHT_BUMPER));
    Serial.print(",");
    for(int i = 0; i < NUM_UDS; i++) {
        Serial.print(uds[i][DISTANCE]);
        Serial.print(",");
    }
    Serial.print(GPS.latitude, 4);
    Serial.print(",");
    Serial.print(GPS.longitude, 4);
    Serial.print(",");
    Serial.print(GPS.angle);
    Serial.println("*");
}
