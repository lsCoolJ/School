package seven.progpracticum;

import java.awt.EventQueue;

/** This class contains the main method which runs the GUI.
 * @author benf94
 * @version 11/20/2013
 */
public final class Doodle {
    
    /**
     * Method throws exception.
     */
    private Doodle() {
        throw new IllegalStateException();
    }
    
    /** Main method runs the GUI.
     * @param aRgs are the arguments of the main method
     */
    public static void main(final String... aRgs) {
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new DoodleGUI();
            }
        });
    }
}
