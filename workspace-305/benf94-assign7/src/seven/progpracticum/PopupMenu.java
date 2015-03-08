package seven.progpracticum;

import javax.swing.Action;
import javax.swing.JMenuItem;
import javax.swing.JPopupMenu;

/** The PopupMenu class creates the popup menu for the panel on the frame.
 * @author benf94
 * @version 11/20/2013
 */
@SuppressWarnings("serial")
public class PopupMenu extends JPopupMenu {
    
    /**
     * Used to get rid of checkstyle.
     */
    private static final int NUM_THREE = 3;
    
    /**
     * 
     */
    private JMenuItem myRed;
    
    /**
     * 
     */
    private JMenuItem myBlue;
    
    /**
     * 
     */
    private JMenuItem myYellow;
    
    /**
     * 
     */
    private JMenuItem myWhite;
    
    /**
     * @param anActionArray is the array of 
     * actions used to create the menuItems on the popup menu.
     */
    public PopupMenu(final Action[] anActionArray) {
        super();
        
        myRed = new JMenuItem(anActionArray[0]);
        myBlue = new JMenuItem(anActionArray[1]);
        myYellow = new JMenuItem(anActionArray[2]);
        myWhite = new JMenuItem(anActionArray[NUM_THREE]);
        final JMenuItem myBlack = new JMenuItem(anActionArray[4]);
        
        myRed.setText("Red");
        myBlue.setText("Blue");
        myYellow.setText("Yellow");
        myWhite.setText("White");
        myBlack.setText("Black");
        
        add(myRed);
        add(myBlue);
        add(myYellow);
        add(myWhite);
        add(myBlack);
    }
}
