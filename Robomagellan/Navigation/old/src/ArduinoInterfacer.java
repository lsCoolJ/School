/**
 * This object communicates between the <code>Driver</code> and the Arduino.
 * Created by Aaron Stephens on 5/28/14.
 *
 * @author Aaron Stephens
 */
public class ArduinoInterfacer {

    public ArduinoInterfacer() {
        // TODO Set up whatever connection needs to me made between the Arduino and this program.
    }

    public Coordinate getCoordinates() {
        Coordinate newCoordinates = new Coordinate();

        // TODO Get current coordinates from GPS

        return newCoordinates;
    }

    public int getHeading() {
        int newHeading = 0;

        // TODO Get current heading from GPS

        return newHeading;
    }

    public int[] getUltraSonicData() {
        int[] data = new int[6];

        // TODO Get current data from ultra sonic sensors

        return data;
    }

    public int[] getBumperData() {
        int[] data = new int[3];

        // TODO Get current data from bumpers

        return data;
    }

    public void go(char direction, int speed) {
        // TODO Go forwards/backwards at some speed
    }

    public void turn(char direction, int angle) {
        // TODO Turn left/right towards some angle
    }

    public void pivot(char direction, int angle) {
        // TODO Pivot left/right towards some angle
    }
}
