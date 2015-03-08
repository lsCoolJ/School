package seven.progpracticum;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.ButtonGroup;
import javax.swing.JCheckBox;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JRadioButton;
import javax.swing.KeyStroke;

/** Menu Bar class sets up the menu bar for the program.
 * @author benf94
 * @version 11/20/2013
 */
@SuppressWarnings("serial")
public class MenuBar extends JMenuBar {
    
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
     * The message that is brought up in the about menu item.
     */
    private static final String ABOUT = "In this program, you can draw by clicking"
            + " on the blank\nfield with your mouse, change the background color"
            + " using\nthe toolbar or the popup menu and you can change the "
            + "width\nand the color of the line that you draw.";
    
    /**
     * Used to get rid of checkstyle.
     */
    private static final String ABOUT_STRING = "About";
    
    /**
     * Paint Panel that is going to be set equal to the panel that is being painted on.
     */
    private PaintPanel myPPanel = new PaintPanel();
    
    
    /**
     * The file menu within the menu bar.
     */
    private JMenu myFileMenu;
    
    /**
     * The options menu within the menu bar.
     */
    private JMenu myOptionsMenu;
    
    /**
     * The help menu within the menu bar.
     */
    private JMenu myHelpMenu;
    
    /**
     * The radio button associated with line width 1.
     */
    private JRadioButton myStrokeOne;
    
    /**
     * The radio button associated with line width 3.
     */
    private JRadioButton myStrokeThree;
    
    /**
     * The radio button associated with line width 5.
     */
    private JRadioButton myStrokeFive;
    
    /**
     * The check box associated with the color Red.
     */
    private JCheckBox myCheckR;
    
    /**
     * The check box associated with the color Green.
     */
    private JCheckBox myCheckG;
    
    /**
     * The check box associated with the color Blue.
     */
    private JCheckBox myCheckB;
    
    /**
     * @param anActionArray is the array of actions being passed from DoodleGUI class.
     * @param aPPanel is the panel that everything is 
     * painted on and is what we are setting myPPanel equal to.
     */
    public MenuBar(final Action[] anActionArray, final PaintPanel aPPanel) {
        super();
        
        myPPanel = aPPanel;
        myFileMenu = new JMenu("File");
        myFileMenu.setMnemonic('F');
        myOptionsMenu = new JMenu("Options");
        myOptionsMenu.setMnemonic('O');
        myHelpMenu = new JMenu("Help");
        myHelpMenu.setMnemonic('H');
        
        setup(anActionArray);
    }
    
    /**
     * @param anActionArray is the array of actions being passed from DoodleGUI class.
     */
    private void setup(Action[] anActionArray) {
        add(myFileMenu);
        myFileMenu.add(new AbstractAction("New") {
            public void actionPerformed(ActionEvent anE) {
                ToolBar.setMyWhite();
                myCheckR.setSelected(false);
                myCheckG.setSelected(false);
                myCheckB.setSelected(false);
                myStrokeOne.setSelected(true);
                myPPanel.clearPanel();
            }
        });
        final JMenuItem open = new JMenuItem("Open");
        
        final JMenuItem save = new JMenuItem("Save");
        
        final JMenuItem print = new JMenuItem("Print");
        
        final JMenuItem exit = new JMenuItem("Exit");
        exit.setAccelerator(KeyStroke.getKeyStroke("ctrl X"));
        exit.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent anE) {
                System.exit(0);
            }
        });
        
        myFileMenu.add(open);
        myFileMenu.add(save);
        myFileMenu.add(print);
        myFileMenu.addSeparator();
        myFileMenu.add(exit);
        
        add(myOptionsMenu);
        final JMenu lineWidth = new JMenu("Line Width");
        
        myStrokeOne = new JRadioButton(anActionArray[5]);
        myStrokeOne.setSelected(true);
        
        myStrokeThree = new JRadioButton(anActionArray[6]);
        
        myStrokeFive = new JRadioButton(anActionArray[7]);
        
        final JRadioButton myStrokeThirty = new JRadioButton(anActionArray[8]);
        
        final JRadioButton myStrokeHundred = new JRadioButton(anActionArray[9]);
        
        myOptionsMenu.add(lineWidth);
        lineWidth.add(myStrokeOne);
        lineWidth.add(myStrokeThree);
        lineWidth.add(myStrokeFive);
        lineWidth.add(myStrokeThirty);
        lineWidth.add(myStrokeHundred);
        
        final ButtonGroup radioBG = new ButtonGroup();
        radioBG.add(myStrokeOne);
        radioBG.add(myStrokeThree);
        radioBG.add(myStrokeFive);
        radioBG.add(myStrokeThirty);
        radioBG.add(myStrokeHundred);
        
        myOptionsMenu.addSeparator();
        
        final JMenu lineColor = new JMenu("Line Color");
        
        myCheckR = new JCheckBox(anActionArray[10]);
        myCheckR.setText("Red");
        
        myCheckG = new JCheckBox(anActionArray[10]);
        myCheckG.setText("Green");
        
        myCheckB = new JCheckBox(anActionArray[10]);
        myCheckB.setText("Blue");
        
        myOptionsMenu.add(lineColor);
        lineColor.add(myCheckR);
        lineColor.add(myCheckG);
        lineColor.add(myCheckB);
        
        add(myHelpMenu);
        final JMenuItem about = new JMenuItem(ABOUT_STRING);
        about.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent anE) {
                JOptionPane.showMessageDialog(myPPanel, ABOUT,
                                              ABOUT_STRING, JOptionPane.INFORMATION_MESSAGE);
            }
        });
        myHelpMenu.add(about);
    }

}
