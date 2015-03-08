package epidemic.progpracticum.model;

import epidemic.progpracticum.view.WorldPanel;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.JTextField;

/** This class is the button listener that listens to the buttons.
 * @author benf94
 * @version 12/6/2013
 */
public class MyButtonListener implements ActionListener {

    /**
     * The panel that the simulation runs on.
     */
    private WorldPanel myWorldPanel;
    
    /**
     * The button that saves all the information.
     */
    private JButton mySaveButton;

    /**
     * The label containing the number of people to be generated.
     */
    private JLabel myPeepNum;

    /**
     * The label containing the number of birds to be generated.
     */
    private JLabel myBirdNum;

    /**
     * The label containing the percentage of birds to be infected.
     */
    private JLabel myInfectNum;

    /**
     * The text field containing the number of infected people.
     */
    private JTextField myPeepInfect;

    /**
     * The text field containing the number of healthy people.
     */
    private JTextField myPeepHealthy;

    /**
     * The text field containing the number infected birds.
     */
    private JTextField myBirdInfect;

    /**
     * The text field containing the number of healthy birds.
     */
    private JTextField myBirdHealthy;

    /**
     * The text field containing the days passed.
     */
    private JTextField myDayCounter;

    /**
     * The simulated world.
     */
    private SimWorld mySimWorld;
    
    /**
     * Used to get rid of checkstyle errors.
     */
    private final int myHunnerd = 100;
    
    /**
     * Used to get rid of checkstyle errors.
     */
    private final String myZeroHealthyString = "Healthy: 0";
    
    /**
     * Used to get rid of checkstyle errors.
     */
    private final String myZeroInfectedString = "Infected: 0";

    /** The constructor makes a MyButtonListener that has the parameters passed.
     * @param aWorldPanel The panel that individuals are painted on.
     * @param aSaveButton is the button that saves everything.
     * @param aPeepNum The label that contains the number of people to be generated.
     * @param aBirdNum the label that contains the number of birds to be generated.
     * @param anInfectNum the label that contains the number of infected birds.
     * percentage of infected birds to be generated.
     * @param aPeepInfect the text field that contains the current number of infected people.
     * @param aPeepHealthy the text field that contains the current number of healthy people.
     * @param aBirdInfect the text field that contains the current number of infected birds.
     * @param aBirdHealthy the text field that contains the current number of healthy birds.
     * @param aDayCounter the text field that contains the current number of days.
     */
    public MyButtonListener(final JButton aSaveButton, final WorldPanel aWorldPanel,
                            final JLabel aPeepNum, final JLabel aBirdNum, final JLabel anInfectNum,
                            final JTextField aPeepInfect, final JTextField aPeepHealthy,
                            final JTextField aBirdInfect, final JTextField aBirdHealthy,
                            final JTextField aDayCounter) {
        super();
        mySaveButton = aSaveButton;
        myWorldPanel = aWorldPanel;
        myPeepNum = aPeepNum;
        myBirdNum = aBirdNum;
        myInfectNum = anInfectNum;
        myPeepInfect = aPeepInfect;
        myPeepHealthy = aPeepHealthy;
        myBirdInfect = aBirdInfect;
        myBirdHealthy = aBirdHealthy;
        myDayCounter = aDayCounter;
    }
    /**
     * This method overrides the actionPerformed method in the ActionListener class.
     * @param anE is the action event being performed.
     */
    @Override
    public void actionPerformed(ActionEvent anE) { 
        final String sourceName = anE.getActionCommand();

        if ("Start".equals(sourceName)) {
            mySimWorld.startTimer();
        }

        if ("Stop".equals(sourceName)) {
            mySimWorld.stopTimer();
        }

        if ("Step".equals(sourceName)) {
            mySimWorld.stepTimer();
        }

        if ("Reset".equals(sourceName)) {
            mySimWorld.clearLists();

            myPeepInfect.setText(myZeroInfectedString);
            myPeepHealthy.setText(myZeroHealthyString);
            myBirdInfect.setText(myZeroInfectedString);
            myBirdHealthy.setText(myZeroHealthyString);
            myDayCounter.setText("0");
        }

        if ("Generate World".equals(sourceName)) {
            final int thisPeepNum = Integer.parseInt(myPeepNum.getText());
            final int thisBirdNum = Integer.parseInt(myBirdNum.getText());
            final double thisInfectNum = Double.parseDouble(myInfectNum.getText());

            final int trueInfectNum = (int) Math.round((thisInfectNum / myHunnerd)
                                                       * thisBirdNum);
            final int trueBirdNum = thisBirdNum - trueInfectNum;

            mySimWorld = new SimWorld(mySaveButton, myWorldPanel, thisPeepNum,
                    trueBirdNum, trueInfectNum, myPeepInfect,
                    myPeepHealthy, myBirdInfect, myBirdHealthy, myDayCounter);
        }
    }
}
