package eight.progpracticum;

import java.awt.EventQueue;

/** This is the main class that starts the program.
 * @author benf94
 * @version 11/28/2013
 */
public final class NotePad {
    
    /**
     * This method throws an illegal state exception.
     */
    private NotePad() {
        throw new IllegalStateException();
    }
    
    /** Main method of the package.
     * @param aRgs are the arguments for main.
     */
    public static void main(final String... aRgs) {
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new NotePadGUI();
            }
        });
    }

}
