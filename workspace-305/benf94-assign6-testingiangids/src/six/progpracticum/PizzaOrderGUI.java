package six.progpracticum;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.FlowLayout;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;
import javax.swing.JToggleButton;

public class PizzaOrderGUI {

    private JFrame frame;
    private static JTextField totalPriceField;
    private static double myTotalPrice;
    static DecimalFormat df = new DecimalFormat("#.##");
    private Image winIcon = Toolkit.getDefaultToolkit().getImage("myresources/pizza3.jpg");
    private ImageIcon icon = new ImageIcon("myresources/pizza2.jpg", "pizza");
    private Color orange = new Color(240, 140, 40);

    /**
     * Launch the application.
     */
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    PizzaOrderGUI window = new PizzaOrderGUI();
                    window.frame.setVisible(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /**
     * Create the application.
     */
    public PizzaOrderGUI() {
        initialize();
    }

    /**
     * Initialize the contents of the frame.
     */
    @SuppressWarnings("static-access")
    private void initialize() {
        
        Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
        int height = (int) (screenSize.getHeight() / 2);
        int width = (int) (screenSize.getWidth() / 2);
        int winX = (int) (screenSize.getWidth() / 4);
        int winY = (int) (screenSize.getHeight() / 4);
        
        frame = new JFrame();
        frame.setResizable(false);
        frame.setIconImage(winIcon);
        frame.setTitle("Build your pizza!");
        frame.setSize(width, height);
        frame.setLocation(winX, winY);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        //PANELS!!!!
        JPanel myPanelNorth = new JPanel();
        frame.getContentPane().add(myPanelNorth, BorderLayout.NORTH);
        myPanelNorth.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));
        myPanelNorth.setBackground(orange);

        JPanel myPanelWest = new JPanel();
        frame.getContentPane().add(myPanelWest, BorderLayout.WEST);
        myPanelWest.setLayout(new BoxLayout(myPanelWest, BoxLayout.Y_AXIS));
        myPanelWest.setBackground(orange);

        JPanel myPanelEast = new JPanel();
        frame.getContentPane().add(myPanelEast, BorderLayout.EAST);
        myPanelEast.setLayout(new BoxLayout(myPanelEast, BoxLayout.Y_AXIS));
        myPanelEast.setBackground(orange);

        JPanel myPanelSouth = new JPanel();
        frame.getContentPane().add(myPanelSouth, BorderLayout.SOUTH);
        myPanelSouth.setBackground(orange);

        JPanel myPanelCenter = new JPanel();
        frame.getContentPane().add(myPanelCenter, BorderLayout.CENTER);
        myPanelCenter.setLayout(new BoxLayout(myPanelCenter, BoxLayout.Y_AXIS));
        myPanelCenter.setBackground(orange);

        JLabel myWelcomeLabel = new JLabel("Welcome to Papa Ben's Little Round Domino Hut!");
        myWelcomeLabel.setIcon(icon);
        myPanelNorth.add(myWelcomeLabel);
        
        //SIIIZZEEES!!!
        JLabel mySizeLabel = new JLabel("Size:");
        mySizeLabel.setAlignmentX(myPanelWest.CENTER_ALIGNMENT);
        myPanelWest.add(mySizeLabel);

        String[] sizeStrings = {"Small(10\")", "Medium(12\")", "Large(14\")", "X-Large(16\")"};

        MyActionListener myActionListener = new MyActionListener();

        Dimension preferredSize = new Dimension(120, 20);
        Dimension maxSize = new Dimension(150, 20);

        JComboBox<String> mySizeComboBox = new JComboBox<String>(sizeStrings);
        mySizeComboBox.setAlignmentX(myPanelWest.CENTER_ALIGNMENT);
        mySizeComboBox.setPreferredSize(preferredSize);
        mySizeComboBox.setMaximumSize(maxSize);
        myPanelWest.add(mySizeComboBox);
        mySizeComboBox.setSelectedIndex(0);
        mySizeComboBox.addActionListener(myActionListener);

        //CRusts!!!!!
        JLabel myCrustLabel = new JLabel("Crust:");
        myCrustLabel.setAlignmentX(myPanelWest.CENTER_ALIGNMENT);
        myPanelWest.add(myCrustLabel);

        JToggleButton myThinTButton = new JToggleButton("Thin");
        myThinTButton.setAlignmentX(myPanelWest.CENTER_ALIGNMENT);
        myThinTButton.setPreferredSize(preferredSize);
        myThinTButton.setMaximumSize(maxSize);
        myPanelWest.add(myThinTButton);
        myThinTButton.addActionListener(myActionListener);

        JToggleButton myRegularTButton = new JToggleButton("Regular");
        myRegularTButton.setSelected(true);
        myRegularTButton.setAlignmentX(myPanelWest.CENTER_ALIGNMENT);
        myRegularTButton.setPreferredSize(preferredSize);
        myRegularTButton.setMaximumSize(maxSize);
        myPanelWest.add(myRegularTButton);
        myRegularTButton.addActionListener(myActionListener);

        JToggleButton myDDishTButton = new JToggleButton("Deep Dish");
        myDDishTButton.setAlignmentX(myPanelWest.CENTER_ALIGNMENT);
        myDDishTButton.setPreferredSize(preferredSize);
        myDDishTButton.setMaximumSize(maxSize);
        myPanelWest.add(myDDishTButton);
        myDDishTButton.addActionListener(myActionListener);

        JToggleButton myStuffedTButton = new JToggleButton("Stuffed");
        myStuffedTButton.setAlignmentX(myPanelWest.CENTER_ALIGNMENT);
        myStuffedTButton.setPreferredSize(preferredSize);
        myStuffedTButton.setMaximumSize(maxSize);
        myPanelWest.add(myStuffedTButton);
        myStuffedTButton.addActionListener(myActionListener);

        ButtonGroup myTButtonGroup = new ButtonGroup();

        myTButtonGroup.add(myThinTButton);
        myTButtonGroup.add(myRegularTButton);
        myTButtonGroup.add(myDDishTButton);
        myTButtonGroup.add(myStuffedTButton);

        //Sauces!!!!!
        JLabel mySauceLabel = new JLabel("Sauce:");
        mySauceLabel.setAlignmentX(myPanelEast.CENTER_ALIGNMENT);
        myPanelEast.add(mySauceLabel);

        JRadioButton myTomatoRButton = new JRadioButton("Tomato");
        myTomatoRButton.setAlignmentX(myPanelEast.CENTER_ALIGNMENT);
        myTomatoRButton.setBackground(orange);
        myTomatoRButton.setSelected(true);
        myPanelEast.add(myTomatoRButton);

        JRadioButton myBBQRButton = new JRadioButton("BBQ");
        myBBQRButton.setAlignmentX(myPanelEast.CENTER_ALIGNMENT);
        myBBQRButton.setBackground(orange);
        myPanelEast.add(myBBQRButton);

        JRadioButton myWhiteRButton = new JRadioButton("White");
        myWhiteRButton.setAlignmentX(myPanelEast.CENTER_ALIGNMENT);
        myWhiteRButton.setBackground(orange);
        myPanelEast.add(myWhiteRButton);

        JRadioButton myAlfredoRButton = new JRadioButton("Alfredo");
        myAlfredoRButton.setAlignmentX(myPanelEast.CENTER_ALIGNMENT);
        myAlfredoRButton.setBackground(orange);
        myPanelEast.add(myAlfredoRButton);

        ButtonGroup myRButtonGroup = new ButtonGroup();

        myRButtonGroup.add(myTomatoRButton);
        myRButtonGroup.add(myBBQRButton);
        myRButtonGroup.add(myWhiteRButton);
        myRButtonGroup.add(myAlfredoRButton);

        //TOPPING BUTTONS!!!!!
        JLabel myToppingsLabel = new JLabel("Toppings:");
        myToppingsLabel.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        myToppingsLabel.setBackground(orange);
        myPanelCenter.add(myToppingsLabel);

        JCheckBox myECheeseCBox = new JCheckBox("Extra Cheese");
        myECheeseCBox.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        myECheeseCBox.setBackground(orange);
        myPanelCenter.add(myECheeseCBox);
        myECheeseCBox.addActionListener(myActionListener);

        JCheckBox myPepperoniCBox = new JCheckBox("Pepperoni");
        myPepperoniCBox.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        myPepperoniCBox.setBackground(orange);
        myPanelCenter.add(myPepperoniCBox);
        myPepperoniCBox.addActionListener(myActionListener);

        JCheckBox mySausageCBox = new JCheckBox("Sausage");
        mySausageCBox.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        mySausageCBox.setBackground(orange);
        myPanelCenter.add(mySausageCBox);
        mySausageCBox.addActionListener(myActionListener);

        JCheckBox myGPepperCBox = new JCheckBox("Green Peppers");
        myGPepperCBox.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        myGPepperCBox.setBackground(orange);
        myPanelCenter.add(myGPepperCBox);
        myGPepperCBox.addActionListener(myActionListener);

        JCheckBox myChickenCBox = new JCheckBox("Chicken");
        myChickenCBox.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        myChickenCBox.setBackground(orange);
        myPanelCenter.add(myChickenCBox);
        myChickenCBox.addActionListener(myActionListener);

        JCheckBox myBOliveCBox = new JCheckBox("Black Olives");
        myBOliveCBox.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        myBOliveCBox.setBackground(orange);
        myPanelCenter.add(myBOliveCBox);
        myBOliveCBox.addActionListener(myActionListener);

        JCheckBox myHamCBox = new JCheckBox("Ham");
        myHamCBox.setAlignmentX(myPanelCenter.CENTER_ALIGNMENT);
        myHamCBox.setBackground(orange);
        myPanelCenter.add(myHamCBox);
        myHamCBox.addActionListener(myActionListener);

        //PRIICEE!!!!
        JLabel lblPrice = new JLabel("Price: $");
        myPanelSouth.add(lblPrice);

        totalPriceField = new JTextField("5.00");
        totalPriceField.setEditable(false);
        myPanelSouth.add(totalPriceField);
        totalPriceField.setColumns(10);

        JButton myOrderButton = new JButton("Order!!!!");
        myPanelSouth.add(myOrderButton);
        myOrderButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                JOptionPane.showMessageDialog(frame, "Your pizza was ordered!!!!");
            }
        });
    }

    public static void setMyTotalPrice(double aTotalPrice) {
        myTotalPrice = aTotalPrice;
        totalPriceField.setText(df.format(myTotalPrice));
    }
}

class MyActionListener implements ActionListener {

    private static double sizePrice = 0.0;
    private static double crustPrice = 0.0;
    private static double toppingPrice = 0.0;
    private static double totalPrice = 0.0;

    @SuppressWarnings("unchecked")
    public void actionPerformed(ActionEvent e) {

        JComboBox<String> comBox;
        JToggleButton tb;
        JCheckBox cb;
        String sourceToString = e.getSource().getClass().toString();
        String checkBox = "class javax.swing.JCheckBox";
        String cBox = "class javax.swing.JComboBox";
        String tButt = "class javax.swing.JToggleButton";

        if (sourceToString.equals(cBox)) {
            comBox = (JComboBox<String>) e.getSource();
            String text = (String) comBox.getSelectedItem();
            if (text == "Small(10\")") {
                sizePrice = 5.00;
            } else if (text == "Medium(12\")"){
                sizePrice = 7.00;
            } else if (text == "Large(14\")") {
                sizePrice = 9.00;
            } else if (text == "X-Large(16\")") {
                sizePrice = 11.00;
            }
        }

        if (sourceToString.equals(tButt)) {
            tb = (JToggleButton) e.getSource();
            String text = tb.getText();
            //tb.setEnabled(false);
            if (text == "Thin") {
                crustPrice = -1.00;
            } else if (text == "Regular") {
                crustPrice = 0.00;
            } else if (text == "Deep Dish") {
                crustPrice = 1.00;
            } else if (text == "Stuffed") {
                crustPrice = 2.00;
            }
        }

        if (sourceToString.equals(checkBox)) {
            cb = (JCheckBox) e.getSource();
            if (cb.isSelected()) {
                toppingPrice = toppingPrice + 0.49;
            } else {
                toppingPrice = toppingPrice - 0.49;
            }
        }
        totalPrice = sizePrice + crustPrice + toppingPrice;
        PizzaOrderGUI.setMyTotalPrice(totalPrice);
    }
}

