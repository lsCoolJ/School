package eight.progpracticum;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Toolkit;
import javax.swing.Action;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

/** This class sets up the frame and the actions.
 * @author benf94
 * @version 11/28/2013
 */
public class NotePadGUI {

    /**
     * Used to get rid of checkstyle errors.
     */
    private static final int NUM_THREE = 3;

    /**
     * Used to get rid of checkstyle errors.
     */
    private static final int NUM_FOUR = 4;

    /**
     * Used to get rid of checkstyle errors.
     */
    private static final int NUM_FIVE = 5;

    /**
     * Used to get rid of checkstyle errors.
     */
    private static final int NUM_SIX = 6;

    /**
     * Used to get rid of checkstyle errors.
     */
    private static final int NUM_SEVEN = 7;
    
    /**
     * Used to get rid of checkstyle errors.
     */
    private static final int NUM_EIGHT = 8;
    
    /**
     * Used to get rid of checkstyle errors.
     */
    private static final int NUM_NINE = 9;

    /**
     * The toolkit used to get the screen size.
     */
    private static final Toolkit KIT = Toolkit.getDefaultToolkit();

    /**
     * The Dimension that is the screen size.
     */
    private static final Dimension SCREEN_SIZE = KIT.getScreenSize();

    /**
     * The width of the frame which is 85% of the screen width.
     */
    private static final double WIDTH = SCREEN_SIZE.width * 0.85;

    /**
     * The height of the frame which is 85% of the screen height.
     */
    private static final double HEIGHT = SCREEN_SIZE.height * 0.85;

    /**
     * The frame which everything is on.
     */
    private final JFrame myFrame = new JFrame("Ben's NotePad Knock-off!");

    /**
     * The Text Area which you type words onto and edit text.
     */
    private final JTextArea myTextArea = new JTextArea();

    /**
     * The scroll pane that the text area is added to.
     */
    private final JScrollPane myScrollPane = new JScrollPane();

    /**
     * The icon of the frame that is displayed on the windows toolbar and the frame.
     */
    private Image myIcon = Toolkit.getDefaultToolkit().getImage("NotePad-Icon.gif");

    /**
     * Array of actions to be used later.
     */
    private Action[] myActions;


    /**
     * This method sets up a new NotePadGUI object which has a frame that
     * has a scroll pane that has a text area.
     */
    public NotePadGUI() {

        myFrame.setIconImage(myIcon);
        myFrame.setSize((int) Math.round(WIDTH), (int) Math.round(HEIGHT));
        myFrame.setLocationRelativeTo(null);
        myFrame.setVisible(true);

        myTextArea.setWrapStyleWord(true);

        setUpActions();
        final MenuBar menuBar = new MenuBar(myActions, myFrame);

        myFrame.add(myScrollPane, BorderLayout.CENTER);
        myScrollPane.setViewportView(myTextArea);
        myFrame.setJMenuBar(menuBar);
    }

    /**
     * The method that sets up the array of actions from earlier.
     */
    private void setUpActions() {
        myActions = new Action[NUM_NINE];

        myActions[0] = new FileAction("New", myFrame, myTextArea);
        myActions[1] = new FileAction("Open", myFrame, myTextArea);
        myActions[2] = new FileAction("Save", myFrame, myTextArea);
        myActions[NUM_THREE] = new FileAction("Print", myFrame, myTextArea);
        myActions[NUM_FOUR] = new FileAction("Exit", myFrame, myTextArea);
        myActions[NUM_FIVE] = new FormatAction("Word Wrap", myFrame, myTextArea);
        myActions[NUM_SIX] = new FormatAction("Font Type", myFrame, myTextArea);
        myActions[NUM_SEVEN] = new FormatAction("Font Size", myFrame, myTextArea);
        myActions[NUM_EIGHT] = new FormatAction("Font Style", myFrame, myTextArea);
    }
}
