/**
 * @brief       GPS functions for Robo-Magellan
 * 
 * @file        gps.ino
 * @author      Chad Condon
 * @date        2014-05-26
 * 
 * @details     Initializes and updates the GPS module.
 *              Provides for commands to write sensor data to serial.
 *              Uses an Adafruit Ultimate GPS breakout
 * 
 * @see         https://www.adafruit.com/product/746
 * 
 * Connections:
 * GND   GND
 * 5V    VIN
 * 19    RX
 * 18    TX
 */

/* --Includes-- */
#include <Adafruit_GPS.h>               // for GPS interface

/* --Declarations-- */
Adafruit_GPS GPS(&Serial1);             /**< GPS module */
boolean usingInterrupt = false;         /**< interrupt flag */

SIGNAL(TIMER0_COMPA_vect) {
    char c = GPS.read();
}

/**
* @brief Initializes GPS breakout
*/
void initGPS()  
{
    GPS.begin(9600);
    GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
    GPS.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ);
    GPS.sendCommand(PGCMD_ANTENNA);
    useInterrupt(true);
    delay(1000);
    Serial1.println(PMTK_Q_RELEASE);
    Serial.println("GPS initialized");
}

/**
* @brief updates GPS feed
*/
void updateGPS()
{
    if (! usingInterrupt) {
            char c = GPS.read();
    }

    if (GPS.newNMEAreceived()) {
        if (!GPS.parse(GPS.lastNMEA()))
            return;
    }
}

/**
* @brief sends GPS location over serial
*/
void getLocation()
{
    if (diagMode) Serial.println("<running getLocation>");
    if (GPS.fix) {
       Serial.print(GPS.latitude, 4);
       Serial.print(GPS.lat);
       Serial.print(", "); 
       Serial.print(GPS.longitude, 4);
       Serial.print(GPS.lon);
       Serial.println();
   } else {
        Serial.println("no GPS fix");
   }
}

/**
* @brief sends speed in knots over serial
*/
void getSpeed()
{
    Serial.println(GPS.speed);
}

/**
* brief sends current heading in degrees over serial
*/
void getHeading()
{
    Serial.println(GPS.angle);
}

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
