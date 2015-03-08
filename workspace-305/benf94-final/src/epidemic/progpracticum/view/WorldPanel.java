/**
 * Ben Foster. Final project Autumn 2013
 */
package epidemic.progpracticum.view;

import epidemic.progpracticum.model.Bird;
import epidemic.progpracticum.model.Human;
import epidemic.progpracticum.model.SimParams;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JPanel;

/** This class creates the panel that everything is simulated on.
 * @author benf94
 * @version 12/6/2013
 */
@SuppressWarnings("serial")
public class WorldPanel extends JPanel {
    
    /**
     * The list of all humans in the world.
     */
    private List<Human> myHumanList;
    
    /**
     * The list of all birds in the world.
     */
    private List<Bird> myBirdList;
    
    /**
     * The dimensions of a human.
     */
    private int myHumanDim = SimParams.HUMAN_DIM;
    
    /**
     * The dimensions of a bird.
     */
    private int myBirdDim = SimParams.BIRD_DIM;
    
    /**
     * Constructs a world panel.
     */
    public WorldPanel() {
        super();
        final Dimension sizeDim = new Dimension(SimParams.PANEL_PIX_WIDTH,
                                          SimParams.PANEL_PIX_HEIGHT);
        setPreferredSize(sizeDim);
        setBackground(Color.white);
        myHumanList = new ArrayList<Human>();
        myBirdList = new ArrayList<Bird>();
    }
    
    /** Overrides the paintComponent method and draws everything.
     * @param aGraphics The graphics object that is used to paint.
     */
    @Override
    public void paintComponent(Graphics aGraphics) {
        super.paintComponent(aGraphics);
        final Graphics2D g2 = (Graphics2D) aGraphics;
        
        for (Human h : myHumanList) {
            g2.setColor(Color.green);
            final Ellipse2D thisHuman 
                = new Ellipse2D.Double(h.getMyLocation().x,
                                       h.getMyLocation().y,
                                       myHumanDim, myHumanDim);
            if (h.isSick()) {
                g2.setColor(Color.red);
            }
            g2.fill(thisHuman);
            g2.setColor(Color.black);
            g2.draw(thisHuman);
            
        }
        
        for (Bird b : myBirdList) {
            g2.setColor(Color.gray);
            final Ellipse2D thisBird 
                = new Ellipse2D.Double(b.getMyLocation().x,
                                       b.getMyLocation().y,
                                       myBirdDim, myBirdDim);
            if (b.isSick()) {
                g2.setColor(Color.orange);  
            }
            g2.fill(thisBird);
            g2.setColor(Color.black);
            g2.draw(thisBird);
        }
        repaint();
    }
    
    /** Sets the list of Humans.
     * @param aHumanList The list of all humans in the world, taken from the SimWorld class.
     */
    public void setMyHumanList(final List<Human> aHumanList) {
        myHumanList = aHumanList;
    }
    
    /** Sets the list of Birds.
     * @param aBirdList The list of all birds in the world, taken from the SimWorld class.
     */
    public void setMyBirdList(final List<Bird> aBirdList) {
        myBirdList = aBirdList;
    }
}
