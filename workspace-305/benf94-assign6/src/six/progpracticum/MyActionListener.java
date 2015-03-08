package six.progpracticum;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JToggleButton;

/** The ActionListener class that handles all button and box events.
 * @author benf94
 * @version 11/12/2013
 */
class MyActionListener implements ActionListener {

    /**
     * Used to get rid of stupid checkstyle.
     */
    private static final double NUM_FIVE = 5.00;

    /**
     * Used to get rid of stupid checkstyle.
     */
    private static final double FORTY_NINE = 0.49;

    /**
     * Used to get rid of stupid checkstyle.
     */
    private static final double NUM_SEVEN = 7.00;

    /**
     * Used to get rid of stupid checkstyle.
     */
    private static final double NUM_NINE = 9.00;

    /**
     * Used to get rid of stupid checkstyle.
     */
    private static final double NUM_ELEVEN = 11.00;

    /**
     * The price of the size used to calculate the total.
     */
    private double mySizePrice = NUM_FIVE;

    /**
     * The price of the crust used to calculate the total.
     */
    private double myCrustPrice;

    /**
     * The price of the toppings used to calculatet the total.
     */
    private double myToppingPrice;

    /**
     * The total price made up from size, crust and toppings.
     */
    private double myTotalPrice;

    /**
     * Method that performs the actions.
     * @param anE is the event parameter.
     */
    @SuppressWarnings("unchecked")
    public void actionPerformed(ActionEvent anE) {
        //sizePrice = NUM_FIVE;

        JComboBox<String> comBox;
        JToggleButton tb;
        JCheckBox cb;
        final String sourceToString = anE.getSource().getClass().toString();
        final String checkBox = "class javax.swing.JCheckBox";
        final String cBox = "class javax.swing.JComboBox";
        final String tButt = "class javax.swing.JToggleButton";

        if (sourceToString.equals(cBox)) {
            comBox = (JComboBox<String>) anE.getSource();
            final String text = (String) comBox.getSelectedItem();
            if ("Small(10\")".equals(text)) {
                mySizePrice = NUM_FIVE;
            } else if ("Medium(12\")".equals(text)) {
                mySizePrice = NUM_SEVEN;
            } else if ("Large(14\")".equals(text)) {
                mySizePrice = NUM_NINE;
            } else if ("X-Large(16\")".equals(text)) {
                mySizePrice = NUM_ELEVEN;
            }
        }

        if (sourceToString.equals(tButt)) {
            tb = (JToggleButton) anE.getSource();
            final String text = tb.getText();
            if ("Thin".equals(text)) {
                myCrustPrice = -1.00;
            } else if ("Regular".equals(text)) {
                myCrustPrice = 0.00;
            } else if ("Deep Dish".equals(text)) {
                myCrustPrice = 1.00;
            } else if ("Stuffed".equals(text)) {
                myCrustPrice = 2.00;
            }
        }

        if (sourceToString.equals(checkBox)) {
            cb = (JCheckBox) anE.getSource();
            if (cb.isSelected()) {
                myToppingPrice = myToppingPrice + FORTY_NINE;
            } else {
                myToppingPrice = myToppingPrice - FORTY_NINE;
            }
        }
        myTotalPrice = mySizePrice + myCrustPrice + myToppingPrice;
        PizzaParlor.setMyTotalPrice(myTotalPrice);
    }
}