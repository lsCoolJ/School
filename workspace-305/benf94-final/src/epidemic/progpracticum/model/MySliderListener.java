/**
 * Ben Foster. Final project Autumn 2013
 */
package epidemic.progpracticum.model;

import javax.swing.JLabel;
import javax.swing.JSlider;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

/** This class is the ChangeListener that listens to the sliders.
 * @author benf94
 * @version 12/6/2013
 */
public class MySliderListener implements ChangeListener {
    
    /**
     * The label that contains the number of people to be generated.
     */
    private JLabel myPeepLabel;
    
    /**
     * The label that contains the number of birds to be generated.
     */
    private JLabel myBirdLabel;
    
    /**
     * The label that contains the number of infected birds.
     */
    private JLabel myInfectLabel;
    
    /** This constructor makes a MySliderListener with the parameters passed.
     * @param aPeepLabel The label that contains the number of people to be generated.
     * @param aBirdLabel The label that contains the number of birds to be generated.
     * @param anInfectLabel The label that contains the number of infected birds.
     */
    public MySliderListener(final JLabel aPeepLabel, final JLabel aBirdLabel,
                            final JLabel anInfectLabel) {
        myPeepLabel = aPeepLabel;
        myBirdLabel = aBirdLabel;
        myInfectLabel = anInfectLabel;
    }
    
    /**
     * This method overrides the stateChanged method in the ChangeListener class.
     * @param anE is the event from the sliders.
     */
    @Override
    public void stateChanged(ChangeEvent anE) {
        final JSlider source = (JSlider) anE.getSource();
        final String sourceName = source.getName();
        final String sourceValue = source.getValue() + "";
        if ("Peep".equals(sourceName)) {
            myPeepLabel.setText(sourceValue);
        }
        
        if ("Bird".equals(sourceName)) {
            myBirdLabel.setText(sourceValue);
        }
        
        if ("Infected".equals(sourceName)) {
            myInfectLabel.setText(sourceValue);
        }
    }

}
