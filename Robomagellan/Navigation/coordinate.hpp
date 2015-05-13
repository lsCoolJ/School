/*
 * This file represents the 'Coordinate' object.  A 'Coordinate' consists of a
 * two floats; one representing the latitude, the other longitude.  For the
 * purpose of this project, the coordinates will be in the WGS-84 datum.
 *
 * A 'Coordinate' is used to represent an actual coordinate in real life.
 *
 * Author:  Aaron Stephens
 *			aaronst@uw.edu
 *
 * Date:  7/15/2014
 *
 * Revision:  9/3/2014
 */

 #include <string>

 using namespace std;

class Coordinate {
	float latitude, longitude;
public:
	Coordinate();
	Coordinate(float lat, float lon);
	float getLatitude();
	float getLongitude();
	void setLatitude(float lat);
	void setLongitude(float lon);
	bool equals(Coordinate c);
	string toString();
};

Coordinate::Coordinate() {
	latitude = 0;
	longitude = 0;
}

Coordinate::Coordinate(float lat, float lon) {
	latitude = lat;
	longitude = lon;
}

float Coordinate::getLatitude() {
	return latitude;
}

float Coordinate::getLongitude() {
	return longitude;
}

void Coordinate::setLatitude(float lat) {
	latitude = lat;
}

void Coordinate::setLongitude(float lon) {
	longitude = lon;
}

bool Coordinate::equals(Coordinate c) {
	if (latitude == c.latitude && longitude == c.longitude) {
		return true;
	} else {
		return false;
	}
}