/**
 * The main brain for the robot.
 * Created by Aaron Stephens on 5/28/14.
 *
 * @author Aaron Stephens
 */
public class Driver {

    /**
     * These fields relate to dealing the list of coordinates for each
     * cone and determining which one is currently being pursued.
     */
    private static int coordinateIndex = 0;
    private static Coordinate[] coordinates;
    private static Coordinate currentDestination;

    /**
     * The object that will interface with the Arduino.
     */
    private static ArduinoInterfacer arduino;

    /**
     * These fields determine what algorithm to carry out.
     * Whether we are traveling to a destination, looking
     * for a cone, attempting to touch a cone, or avoiding
     * an obstacle.
     *
     * The options for mode are:  (N)avigating, (A)voiding,
     * (S)earching, (T)ouching.
     */
    private static char mode;
    private static boolean hit = false;

    /**
     * These fields hold the data that comes from the Arduino.
     */
    private static Coordinate location;
    private static int[] ultraSonicData;
    private static int[] bumperData;
    private static int heading;

    public static void main(String[] args) {

        coordinates = loadCoordinates();                // Load in the list of coordinates from a file.

        currentDestination = loadNextDestination();     // Load the first destination.

        arduino = new ArduinoInterfacer();              // Instantiate the ArduinoInterfacer

        /*
         * This is where the magic happens.  This loop
         * will run until the end of the course.
         */
        while (true) {
            update();

            if (hit) {
                unseenObstacle();
            } else if (currentDestination == null) {
                arduino.go('f', 0);
                break;
            } else {
                switch(mode) {
                    case 'N' :
                        navigate();

                    case 'A' :
                        avoid();

                    case 'S' :
                        search();

                    case 'T' :
                        touch();
                        coordinateIndex++;
                }
            }
        }
    }

    /**
     * Loads the coordinates from a file and puts them into an array.
     * @return Returns an array of type <code>Coordinate</code>.
     */
    private static Coordinate[] loadCoordinates() {
        Coordinate[] coordinates;
        // TODO load coordinates from file
        return null;
    }

    /**
     * Changes the current destination to the next one.
     * @return Returns next <code>Coordinate</code>.
     */
    private static Coordinate loadNextDestination() {
        if (coordinateIndex < coordinates.length) {
            return coordinates[coordinateIndex];
        } else {
            return null;
        }
    }

    /**
     * Updates all the data from the Arduino and determines what
     * algorithm needs to be carried out next.
     */
    private static void update() {
        ultraSonicData = arduino.getUltraSonicData();
        bumperData = arduino.getBumperData();
        location = arduino.getCoordinates();

        // TODO Logic to determine if we hit something or need to avoid something.
        // TODO Set algorithm booleans (hit, navigating, avoiding, searching, touching.
    }

    /**
     * Recognizes where the obstacle is and avoids it.
     */
    private static void unseenObstacle() {
        // TODO Algorithm to deal with and avoid an unseen obstacle detected by 1 or more bumpers.
    }

    /**
     * Avoids an obstacle detected by the ultra sonic sensors.
     */
    private static void avoid() {
        // TODO Obstacle
    }

    /**
     * Keeps us on course.
     */
    private static void navigate() {
        // TODO Algorithm to make sure we're headed in the right direction.

        arduino.go('f', 100); // FULL SPEED AHEAD
    }

    /**
     * All the image processing and area searching will go here.
     */
    private static void search() {
        // TODO All the searching algorithm stuff.
    }

    /**
     * YES! We've found a cone, now we just need to touch it.
     */
    private static void touch() {
        // TODO Algorithm to successfully touch a cone.

        currentDestination = loadNextDestination();
    }

    /**
     * Calculates the distance between <code>location</code> and <code>currentDestination</code>.
     * @return An integer value representing the distance left to travel.
     */
    private static int areWeThereYet() {
        // TODO Returns the distance to the current destination.
        return 0;
    }
}
