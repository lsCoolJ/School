package eight.progpracticum;

import java.awt.Font;
import java.awt.GraphicsEnvironment;
import java.awt.event.ActionEvent;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;

/** This class is the format action class that
 *  defines what each action does for the format menu.
 * @author benf94
 * @version 11/28/2013
 */
@SuppressWarnings("serial")
public class FormatAction extends AbstractAction {

    /**
     * Used to get rid of checkstyle error.
     */
    private static final String AREA_STRING = "area";

    /**
     * Used to get rid of checkstyle error.
     */
    private static final String FRAME_STRING = "frame";
    
    /**
     * Used to shorten a line length. Label in the style dialog box.
     */
    private static final String STYLE_STRING = "Please choose a font style.";
    
    /**
     * Used to shorten a line length. Title in the style dialog box.
     */
    private static final String STYLE_STRING_TITLE = "Change Font Style.";
    
    /**
     * Used to shorten a line length. Label in the size dialog box.
     */
    private static final String SIZE_STRING = "Please choose a font size. ANY SIZE!";
    
    /**
     * Used to shorten a line length. Title in the size dialog box.
     */
    private static final String SIZE_STRING_TITLE = "Change Font Size.";
    
    /**
     * Used to shorten a line length. Label in the type dialog box.
     */
    private static final String TYPE_STRING = "Please choose a font type.";
    
    /**
     * Used to shorten a line length. Title in the type dialog box.
     */
    private static final String TYPE_STRING_TITLE = "Change Font Type.";

    /**
     * Used to get all avaliable fonts from java.
     */
    private final GraphicsEnvironment myGEnv
        = GraphicsEnvironment.getLocalGraphicsEnvironment();

    /**
     * Array of strings containing the names of all available fonts.
     */
    private final String[] myFontStrings = myGEnv.getAvailableFontFamilyNames();

    /**
     * Array of strings containing the names of the different available styles.
     */
    private final String[] myStyleStrings = {"Plain", "Bold", "Italic", "Bold Italic" };

    /**
     * @param aName is the name of the menu item.
     * @param aFrame is the frame of the program.
     * @param aTextArea is the text area that everything is being typed on.
     */
    public FormatAction(final String aName, final JFrame aFrame, final JTextArea aTextArea) {
        putValue(Action.NAME, aName);
        putValue(AREA_STRING, aTextArea);
        putValue(FRAME_STRING, aFrame);
    }

    @Override
    public void actionPerformed(ActionEvent anE) {
        final String cboxClass = "class javax.swing.JCheckBox";
        final String mItemClass = "class javax.swing.JMenuItem";
        final String sourceClass = anE.getSource().getClass().toString();
        final JTextArea textArea = (JTextArea) getValue(AREA_STRING);
        final JFrame mainFrame = (JFrame) getValue(FRAME_STRING);

        String currentStyle = myStyleStrings[0];
        int intCurrentStyle = textArea.getFont().getStyle();
        String currentFont = textArea.getFont().getFontName();
        int currentSize = textArea.getFont().getSize();

        if (sourceClass.equals(cboxClass)) {
            final JCheckBox source = (JCheckBox) anE.getSource();
            final String sourceText = source.getActionCommand();

            if ("Word Wrap".equals(sourceText)) {
                if (source.isSelected()) {
                    textArea.setLineWrap(true);
                } else {
                    textArea.setLineWrap(false);
                } 
            }
        }

        if (sourceClass.equals(mItemClass)) {
            final JMenuItem fontMItem = (JMenuItem) anE.getSource();
            final String itemName = fontMItem.getActionCommand();
            if ("Font Type".equals(itemName)) {
                String thisFont = currentFont;
                final Object stringFontObject 
                    = JOptionPane.showInputDialog(mainFrame, TYPE_STRING, TYPE_STRING_TITLE,
                                                  JOptionPane.PLAIN_MESSAGE,
                                                  null, myFontStrings, currentFont);
                if (stringFontObject == null) {
                    thisFont = currentFont;
                } else {
                    thisFont = (String) stringFontObject; 
                }
                currentFont = thisFont;
            }

            if ("Font Style".equals(itemName)) {
                int thisIntStyle = intCurrentStyle;
                String thisStyle = currentStyle;
                final Object stringStyleObject 
                    = JOptionPane.showInputDialog(mainFrame, STYLE_STRING, STYLE_STRING_TITLE,
                                                  JOptionPane.PLAIN_MESSAGE,
                                                  null, myStyleStrings, currentStyle);
                final String thisObject = (String) stringStyleObject;
                if ("Plain".equals(thisObject)) {
                    thisIntStyle = Font.PLAIN;
                }

                if ("Bold".equals(thisObject)) {
                    thisStyle = thisObject;
                    thisIntStyle = Font.BOLD;
                }

                if ("Italic".equals(thisObject)) {
                    thisIntStyle = Font.ITALIC;
                }

                if ("Bold Italic".equals(thisObject)) {
                    thisIntStyle = Font.BOLD + Font.ITALIC;
                }
                intCurrentStyle = thisIntStyle;
                currentStyle = thisStyle;
            }

            if ("Font Size".equals(itemName)) {
                int thisSize = currentSize;
                final Object stringSizeObject 
                    = JOptionPane.showInputDialog(mainFrame, SIZE_STRING, SIZE_STRING_TITLE,
                                                  JOptionPane.PLAIN_MESSAGE,
                                                  null, null, currentSize);
                if (stringSizeObject == null) {
                    thisSize = currentSize;
                } else {
                    thisSize = Integer.parseInt((String) stringSizeObject);
                }
                currentSize = thisSize;
            }
        }
        textArea.setFont(new Font(currentFont, intCurrentStyle, currentSize));
    }

}
