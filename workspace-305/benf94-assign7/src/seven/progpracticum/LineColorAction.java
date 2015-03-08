package seven.progpracticum;

import java.awt.Color;
import java.awt.event.ActionEvent;
import javax.swing.AbstractAction;
import javax.swing.JCheckBox;

/** This class is the action class that handles the CheckBoxes in the options menu.
 * @author benf94
 * @version 11/20/2013
 */
@SuppressWarnings("serial")
public class LineColorAction extends AbstractAction {

    /**
     * Used to get rid of checkstyle error.
     */
    private static final String PANEL = "panel";
    
    /**
     * Used to get rid of checkstyle error.
     */
    private static final String RED = "Red";
    
    /**
     * Used to get rid of checkstyle error.
     */
    private static final String GREEN = "Green";
    
    /**
     * Used to get rid of checkstyle error.
     */
    private static final String BLUE = "Blue";
    
    /**
     * Used to get rid of checkstyle error.
     */
    private static final int NUM_TWO_FIFTY_FIVE = 255;
    
    /**
     * @param aPanel is the panel that everything is being drawn on.
     */
    public LineColorAction(final PaintPanel aPanel) {
        putValue(PANEL, aPanel);
        putValue(RED, false);
        putValue(GREEN, false);
        putValue(BLUE, false);
    }

    @Override
    public void actionPerformed(ActionEvent anE) {
        int redColor = 0;
        int greenColor = 0;
        int blueColor = 0;
        final JCheckBox cbox = (JCheckBox) anE.getSource();
        putValue(cbox.getText(), cbox.isSelected());

        if ((boolean) getValue(RED)) {
            redColor = NUM_TWO_FIFTY_FIVE;
        }

        if ((boolean) getValue(GREEN)) {
            greenColor = NUM_TWO_FIFTY_FIVE;
        }

        if ((boolean) getValue(BLUE)) {
            blueColor = NUM_TWO_FIFTY_FIVE;
        }

        final Color c = new Color(redColor, greenColor, blueColor);
        final PaintPanel p = (PaintPanel) getValue(PANEL);
        p.setColor(c);
    }

}
