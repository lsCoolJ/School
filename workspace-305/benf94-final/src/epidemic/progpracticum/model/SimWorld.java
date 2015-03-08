/**
 * Ben Foster. Final project Autumn 2013
 */
package epidemic.progpracticum.model;

import epidemic.progpracticum.view.WorldPanel;
import java.awt.Point;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.Timer;
import javax.swing.filechooser.FileNameExtensionFilter;

/** This class simulates the world that is viewed.
 * @author benf94
 * @version 12/6/2013
 */
public class SimWorld {

    /**
     * List of all possible locations on the world panel.
     */
    private List<Point> myLocations = new ArrayList<Point>();

    /**
     * List of all humans in the world.
     */
    private List<Human> myHumanList = new ArrayList<Human>();

    /**
     * List of all brids in the world.
     */
    private List<Bird> myBirdList = new ArrayList<Bird>();

    /**
     * The world panel that the simulation runs on.
     */
    private WorldPanel myWorldPanel;

    /**
     * The button that saves all the information.
     */
    private JButton mySaveButton;

    /**
     * The number of people in the world.
     */
    private int myPeepNum;

    /**
     * The number of birds in the world.
     */
    private int myBirdNum;

    /**
     * The number of birds infected.
     */
    private int myInfectNum;

    /**
     * The total number of days elapsed.
     */
    private int myDayNumber;

    /**
     * The total number of sick people.
     */
    private int myPeepSickNumber;

    /**
     * The total number of healthy people.
     */
    private int myPeepHealthyNumber;

    /**
     * The total number of sick birds.
     */
    private int myBirdSickNumber;

    /**
     * The total number of healthy birds.
     */
    private int myBirdHealthyNumber;

    /**
     * The textfield containing the number of sick people.
     */
    private JTextField myPeepInfect;

    /**
     * The textfield containing the number of healthy people.
     */
    private JTextField myPeepHealthy;

    /**
     * The textfield containing the number of sick birds.
     */
    private JTextField myBirdInfect;

    /**
     * The textfield containing the number of healthy birds.
     */
    private JTextField myBirdHealthy;

    /**
     * The textfield containing the number of days elapsed.
     */
    private JTextField myDayCounter;

    /**
     * The timer that runs the animation.
     */
    private Timer myTimer;

    /**
     * The file that is being saved.
     */
    private File myFileToBeSaved;

    /**
     * The file path of the file being saved.
     */
    private String myFilePath;

    /**
     * The listener that listens to the timer.
     */
    private final MyTimerListener myTimerListener = new MyTimerListener();

    /**
     * Used to get rid of checkstyle errors.
     */
    private final int myTen = 10;

    /**
     * Used to get rid of checkstyle errors.
     */
    private final String myHealthyString = "Healthy: ";

    /**
     * Used to get rid of checkstyle errors.
     */
    private final String myInfectedString = "Infected: ";

    /**
     * Used to make lines shorter.
     */
    private final String mySaveMessage = "Would you like to save the information"
            + " about this session of the Epidemic Simulator?";

    /**
     * Used to make lines shorter.
     */
    private final FileNameExtensionFilter myFilter 
        = new FileNameExtensionFilter("CSV documents", "csv");

    /**
     * Used to get rid of checkstyle errors.
     */
    private final String myCSVString = ".csv";

    /**
     * Used to make lines shorter.
     */
    private final String mySaveStringOne = "Epidemic Simulator Information:\n";

    /**
     * Used to make lines shorter.
     */
    private final String mySaveStringTwo = "Original Human Count, Original Healthy Bird Count,"
            + " Original Sick Bird Count, Current Healthy Humans, Current Healthy Birds,"
            + " Current Infected Humans, Current Infected Birds, Number of Days Elapsed,"
            + " Chance of Getting Infected \n";

    /**
     * Used to get rid of checkstyle errors.
     */
    private final String myComma = ",";


    /** Constructs a Simulated World with the parameters passed.
     * @param aWorldPanel The panel that the simulation runs on.
     * @param aSaveButton is the button that saves information.
     * @param aPeepNum The number of people in the world.
     * @param aBirdNum The number of birds in the world.
     * @param anInfectNum The number of infected birds in the world.
     * @param aPeepInfect The textfield containing the number of sick people.
     * @param aPeepHealthy The textfield containing the number of healthy people.
     * @param aBirdInfect The textfield containing the number of sick birds.
     * @param aBirdHealthy The textfield containing the number of healthy birds.
     * @param aDayCounter The textfield containing the number of days elapsed.
     */
    public SimWorld(final JButton aSaveButton, final WorldPanel aWorldPanel,
                    final int aPeepNum, final int aBirdNum, final int anInfectNum,
                    final JTextField aPeepInfect, final JTextField aPeepHealthy,
                    final JTextField aBirdInfect, final JTextField aBirdHealthy,
                    final JTextField aDayCounter) {

        setVariables(aSaveButton, aWorldPanel, aPeepNum, aBirdNum, anInfectNum,
                     aPeepInfect, aPeepHealthy, aBirdInfect, aBirdHealthy, aDayCounter);

        setLists(myPeepNum, myBirdNum); 

        myTimer = new Timer(SimParams.ANIMATION_STEP_TIME, myTimerListener);

        myPeepHealthy.setText(myHealthyString + myPeepHealthyNumber);
        myBirdHealthy.setText(myHealthyString + myBirdHealthyNumber);
        myBirdInfect.setText(myInfectedString + myBirdSickNumber);

        myWorldPanel.setMyHumanList(myHumanList);
        myWorldPanel.setMyBirdList(myBirdList);

    }

    /** Used to set all the variables in this class.
     * @param aWorldPanel The panel that the simulation runs on.
     * @param aSaveButton The button that saves all the information.
     * @param aPeepNum The number of people in the world.
     * @param aBirdNum The number of birds in the world.
     * @param anInfectNum The number of infected birds in the world.
     * @param aPeepInfect The textfield containing the number of sick people.
     * @param aPeepHealthy The textfield containing the number of healthy people.
     * @param aBirdInfect The textfield containing the number of sick birds.
     * @param aBirdHealthy The textfield containing the number of healthy birds.
     * @param aDayCounter The textfield containing the number of days elapsed.
     */
    private void setVariables(final JButton aSaveButton, final WorldPanel aWorldPanel,
                             final int aPeepNum, final int aBirdNum, final int anInfectNum,
                             final JTextField aPeepInfect, final JTextField aPeepHealthy,
                             final JTextField aBirdInfect, final JTextField aBirdHealthy,
                             final JTextField aDayCounter) {
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

        myPeepHealthyNumber = 0;
        myBirdSickNumber = 0;
        myBirdHealthyNumber = 0;

        mySaveButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent anE) {
                saveAction();
            }
        });
    }

    /** Used to set the lists of humans and birds.
     * @param aPeepNum The number of people in the world.
     * @param aBirdNum The number of birds in the world.
     */
    private void setLists(final int aPeepNum, final int aBirdNum) {
        final int rowNum = SimParams.PANEL_PIX_HEIGHT / myTen;
        final int columnNum = SimParams.PANEL_PIX_WIDTH / myTen;

        for (int k = 0; k < (rowNum * columnNum); k++) {
            final int x = (k % columnNum) * myTen;
            final int y = (k / columnNum) * myTen;
            myLocations.add(new Point(x, y));
        }

        Collections.shuffle(myLocations);
        for (int i = 0; i < aPeepNum; i++) {
            final Human thisHuman = new Human('H', false, 0, myLocations.get(i));
            myPeepHealthyNumber++;
            myLocations.remove(i);
            myHumanList.add(thisHuman);
        }

        for (int i = 0; i < aBirdNum; i++) {
            final Bird thisBird = new Bird('B', false, 0, myLocations.get(i));
            myBirdHealthyNumber++;
            myLocations.remove(i);
            myBirdList.add(thisBird);
        }

        for (int i = 0; i < myInfectNum; i++) {
            final Bird thisBird = new Bird('B', true, 0, myLocations.get(i));
            myBirdSickNumber++;
            myBirdList.add(thisBird);
        }
    }

    /**
     * This method starts the timer.
     */
    public void startTimer() {
        myTimer.start();
    }

    /**
     * This method stops the timer.
     */
    public void stopTimer() {
        myTimer.stop();
    }

    /**
     * This method clears the lists of humans and birds 
     * and sets the number of days to 0.
     */
    public void clearLists() {
        myHumanList.clear();
        myBirdList.clear();
        myDayNumber = -1;
    }

    /**
     * This method describes what is in each step of a timer.
     */
    public void stepTimer() {
        final List<Point> sickPointList = new ArrayList<Point>();
        myPeepSickNumber = 0;
        myPeepHealthyNumber = 0;
        myBirdSickNumber = 0;
        myBirdHealthyNumber = 0;

        for (Human h : myHumanList) {
            h.setMyLocation(h.move());
            if (h.isSick()) {
                sickPointList.add(h.getMyLocation());
                myPeepSickNumber++;
            } else {
                myPeepHealthyNumber++;
            }
        }

        for (Bird b : myBirdList) {
            b.setMyLocation(b.move());
            if (b.isSick()) {
                sickPointList.add(b.getMyLocation());
                myBirdSickNumber++;
            } else {
                myBirdHealthyNumber++;
            }
        }

        for (Human h : myHumanList) {
            h.compareToEquals(h, sickPointList);
        }

        for (Bird b : myBirdList) {
            b.compareToEquals(b, sickPointList);
        }

        if (myPeepHealthyNumber == 0 && myBirdHealthyNumber == 0) {
            stopTimer();
            myDayNumber--;
            mySaveButton.setEnabled(true);

        }

        myPeepInfect.setText(myInfectedString + myPeepSickNumber);
        myPeepHealthy.setText(myHealthyString + myPeepHealthyNumber);
        myBirdInfect.setText(myInfectedString + myBirdSickNumber);
        myBirdHealthy.setText(myHealthyString + myBirdHealthyNumber);
        myDayCounter.setText(myDayNumber + "");
        myWorldPanel.setMyHumanList(myHumanList);
        myWorldPanel.setMyBirdList(myBirdList);
        myDayNumber++;
        myWorldPanel.repaint();
    }

    /** This method saves the original information.
     * Used to get rid of checkstyle errors.
     */
    private void saveAction() {
        final int c = JOptionPane.showOptionDialog(myWorldPanel,
                                                   mySaveMessage, "Save", 0, 1,
                                                   null, null, 
                                                   JOptionPane.YES_OPTION);
        if (c == JOptionPane.YES_OPTION) {
            final JFileChooser fileSaveChooser = new JFileChooser();
            fileSaveChooser.setFileFilter(myFilter);
            final int n = fileSaveChooser.showSaveDialog(myWorldPanel);
            if (n == JFileChooser.APPROVE_OPTION) {
                myFileToBeSaved = fileSaveChooser.getSelectedFile();
                myFilePath = fileSaveChooser.getSelectedFile().getAbsolutePath();
                fileSave(myFilePath, myFileToBeSaved, fileSaveChooser);
            }
        } else {
            JOptionPane.showMessageDialog(myWorldPanel, "Didn't Save");
            return;
        }
    }

    /** This method is used to get rid of the nested if statements checkstyle error.
     * @param aFilePath is the path of the file that is being saved.
     * @param aFileToBeSaved is the file being saved.
     * @param aFileSaveChooser is the file save chooser dialog box.
     */
    private void fileSave(final String aFilePath, File aFileToBeSaved,
                          final JFileChooser aFileSaveChooser) {
        myFilePath = aFilePath;
        myFileToBeSaved = aFileToBeSaved;
        if (!myFilePath.endsWith(myCSVString)) {
            myFileToBeSaved = new File(aFileSaveChooser.getSelectedFile() + myCSVString);
        }

        try {
            final boolean fileExist = myFileToBeSaved.exists();
            System.out.println(fileExist);
            final FileWriter fw = new FileWriter(myFileToBeSaved, true);
            System.out.println(fileExist);
            final BufferedWriter bw = new BufferedWriter(fw);
            System.out.println(fileExist);
            myDayNumber--;
            
            if (!fileExist) {
                bw.write(mySaveStringOne);
                bw.write(mySaveStringTwo);
            }
            
            bw.write(myPeepNum + myComma + myBirdNum + myComma 
                     + myInfectNum + myComma + myPeepHealthyNumber
                     + myComma + myBirdHealthyNumber + myComma 
                     + myPeepSickNumber + myComma 
                     + myBirdSickNumber + myComma + myDayNumber
                     + myComma + SimParams.CHANCE_OF_INFECTION + ",\n");

            bw.close();
        } catch (final IOException e) {
            e.printStackTrace();
        }
        JOptionPane.showMessageDialog(myWorldPanel, "Information Saved");
    }

    /** This inner class is the timer listener for the timer.
     * @author benf94
     * @version 12/6/2013
     */
    private class MyTimerListener implements ActionListener {

        /**
         * actionPerformed method overrides the
         *  actionPerformed method in the ActionListener class.
         *  @param anE is the action event that is being performed.
         */
        @Override
        public void actionPerformed(ActionEvent anE) {
            stepTimer();
        }

    }
}