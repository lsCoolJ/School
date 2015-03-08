package seven.progpracticum;

import javax.swing.Action;
import javax.swing.ButtonGroup;
import javax.swing.JToggleButton;
import javax.swing.JToolBar;

/** ToolBar class creates the tool bar on the frame.
 * @author benf94
 * @version 11/20/2013
 */
@SuppressWarnings("serial")
public class ToolBar extends JToolBar {
    
    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_THREE = 3;
    
    /**
     * The red toggle button on the toolbar.
     */
    private static JToggleButton myRed;
    
    /**
     * The blue toggle button on the toolbar.
     */
    private static JToggleButton myBlue;
    
    /**
     * The yellow toggle button on the toolbar.
     */
    private static JToggleButton myYellow;
    
    /**
     * The white toggle button on the toolbar.
     */
    private static JToggleButton myWhite;
    
    /**
     * The buttongroup that contains the toggle buttons.
     */
    private ButtonGroup myToggleGroup;
    
    /**
     * @param anActionArray is the array that contains the 
     * individual actions passed in from the DoodleGUI class.
     */
    public ToolBar(final Action[] anActionArray) {
        super("Colors");
        
        myRed = new JToggleButton(anActionArray[0]);
        myBlue = new JToggleButton(anActionArray[1]);
        myYellow = new JToggleButton(anActionArray[2]);
        myWhite = new JToggleButton(anActionArray[NUM_THREE]);
        myWhite.setSelected(true);
        final JToggleButton myBlack = new JToggleButton(anActionArray[4]);
        
        myRed.setToolTipText("Red");
        myBlue.setToolTipText("Blue");
        myYellow.setToolTipText("Yellow");
        myWhite.setToolTipText("White");
        myBlack.setToolTipText("Black");
        
        myToggleGroup = new ButtonGroup();
        
        myToggleGroup.add(myRed);
        myToggleGroup.add(myBlue);
        myToggleGroup.add(myYellow);
        myToggleGroup.add(myWhite);
        myToggleGroup.add(myBlack);
        
        add(myRed);
        add(myBlue);
        add(myYellow);
        add(myWhite);
        add(myBlack);
    }

    
/*    *//**
     * Sets the red toggle button to selected.
     *//*
    public static void setMyRed() {
        myRed.setSelected(true);
    }
    
    *//**
     * Sets the blue toggle button to selected.
     *//*
    public static void setMyBlue() {
        myBlue.setSelected(true);
    }
    
    *//**
     * Sets the yellow toggle button to selected.
     *//*
    public static void setMyYellow() {
        myYellow.setSelected(true);
    }*/
    
    /**
     * Sets the white toggle button to selected.
     */
    public static void setMyWhite() {
        myWhite.setSelected(true);
    }
}
