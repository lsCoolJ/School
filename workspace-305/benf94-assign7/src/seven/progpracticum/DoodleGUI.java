package seven.progpracticum;

import java.awt.BasicStroke;
import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.Action;
import javax.swing.ImageIcon;
import javax.swing.JFrame;

/** DoodleGUI class sets up the frame.
 * @author benf94
 * @version 11/20/2013
 */
@SuppressWarnings("serial")
public class DoodleGUI extends JFrame {

    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_THREE = 3;

    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_FOUR = 4;

    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_FIVE = 5;

    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_SIX = 6;

    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_SEVEN = 7;

    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_EIGHT = 8;

    /**
     * The panel that everything is being drawn on.
     */
    private PaintPanel myPPanel;

    /**
     * The frame of the program.
     */
    private final JFrame myFrame;

    /**
     * The menu bar on the frame.
     */
    private final MenuBar myMenuBar;

    /**
     * The tool bar on the frame.
     */
    private final ToolBar myTBar;

    /**
     * The popup menu associated with the panel.
     */
    private final PopupMenu myPUMenu;

    /**
     * The array of actions that are carried out in separate classes.
     */
    private Action[] myActions;

    /**
     * The method that sets up the frame, menubar, toolbar, and panel.
     */
    public DoodleGUI() {
        myFrame = new JFrame("Ben's Paint Knock-Off!");

        myPPanel = new PaintPanel();

        setUpActions();
        myTBar = new ToolBar(myActions);
        myMenuBar = new MenuBar(myActions, myPPanel);
        myPUMenu = new PopupMenu(myActions);

        myFrame.setJMenuBar(myMenuBar);

        myFrame.add(myTBar, BorderLayout.SOUTH);
        myFrame.add(myPPanel, BorderLayout.CENTER);

        myPPanel.setComponentPopupMenu(myPUMenu);

        myFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        myFrame.pack();
        myFrame.setVisible(true);
    }

    /**
     * 
     */
    public void clearPanel() {
        myPPanel.removeAll();
    }

    /**
     * Method that sets up the action array to be passed into other classes.
     */
    private void setUpActions() {
        myActions = new Action[11];
        myActions[0] = new PanelColorAction(new ImageIcon("red-ball.gif"), 
                                            Color.RED, myPPanel);
        myActions[1] = new PanelColorAction(new ImageIcon("blue-ball.gif"), 
                                            Color.BLUE, myPPanel);
        myActions[2] = new PanelColorAction(new ImageIcon("yellow-ball.gif"), 
                                            Color.YELLOW, myPPanel);
        myActions[NUM_THREE] = new PanelColorAction(new ImageIcon("white-ball.gif"), 
                                            Color.WHITE, myPPanel);
        myActions[NUM_FOUR] = new PanelColorAction(new ImageIcon("black-ball.gif"),
                                                   Color.BLACK, myPPanel);
        myActions[NUM_FIVE] = myPPanel.new MyRadioAction("1", new BasicStroke(1));
        myActions[NUM_SIX] = myPPanel.new MyRadioAction("3", new BasicStroke(NUM_THREE));
        myActions[NUM_SEVEN] = myPPanel.new MyRadioAction("5", new BasicStroke(NUM_FIVE));
        myActions[NUM_EIGHT] = myPPanel.new MyRadioAction("30", new BasicStroke(30));
        myActions[9] = myPPanel.new MyRadioAction("100", new BasicStroke(100));
        myActions[10] = new LineColorAction(myPPanel);
    }
}
