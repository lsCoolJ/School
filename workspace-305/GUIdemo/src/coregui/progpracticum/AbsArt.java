package coregui.progpracticum;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.font.FontRenderContext;
import java.awt.geom.*;
import java.util.Random;
import javax.swing.*;

public class AbsArt {

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {

                final String info = "Abstract art created by Ben Foster." 
                        +  "\nThis art was randomly generated!"
                        + "\nTry resizing the window and have fun!";

                final JFrame frame = new Frame();
                final int PMessage = JOptionPane.PLAIN_MESSAGE;
                final int IMessage = JOptionPane.INFORMATION_MESSAGE;
                
                
                frame.setTitle("Abstract Art");
                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                frame.setVisible(true);
                //frame.setResizable(false);

                JMenuBar menuBar = new JMenuBar();
                frame.setJMenuBar(menuBar);

                JMenuItem about = new JMenuItem("About");
                menuBar.add(about);
                about.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent arg0) {
                        JOptionPane.showMessageDialog(frame, info, "Information", PMessage);
                    }
                });

                JMenuItem close = new JMenuItem("Exit");
                menuBar.add(close);
                close.addActionListener(new ActionListener() {
                    public void actionPerformed(ActionEvent arg0) {
                        JOptionPane.showMessageDialog(frame, "Art Closing", "Exiting", IMessage);
                        System.exit(0);
                    }
                });
            }
        });
    }
}

@SuppressWarnings("serial")
class Frame extends JFrame {
    public Frame() {
        add(new FrameComponent());
        pack();
    }
}

@SuppressWarnings("serial")
class FrameComponent extends JComponent {

    Random rand = new Random();

    private static final Toolkit kit = Toolkit.getDefaultToolkit();
    private static final Dimension screenSize = kit.getScreenSize();

    private static final int defaultWidth = (screenSize.width / 4) * 3;
    private static final int defaultHeight = screenSize.height - 80;

    private static final int xCoord = defaultWidth / 2;
    private static final int yCoord = defaultHeight / 2;

    public void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g;
        
        int backW = getWidth();
        int backH = getHeight();
        Color colorOne = Color.RED;
        Color colorTwo = Color.BLUE;
        
        //Set background color to Gradient
        GradientPaint gp = new GradientPaint(0, 0, colorOne, backW, backH, colorTwo);
        g2.setPaint(gp);
        g2.fillRect(0, 0, backW, backH);
        
        AffineTransform affineTransform = new AffineTransform();
        affineTransform.scale(rand.nextDouble(), rand.nextDouble());
        affineTransform.rotate(rand.nextDouble());

        for (int i = 0; i < 15; i++) {
            
            final int evenOdd = rand.nextInt(10000000);
            
            //draw 15 random ellipses.
            g2.setStroke(new BasicStroke(rand.nextInt(50)));
            g2.setPaint(new Color(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255)));
            Ellipse2D ellipse = new Ellipse2D.Double(rand.nextInt(xCoord), rand.nextInt(yCoord),
                    rand.nextInt(500), rand.nextInt(500));
            g2.draw(ellipse);

            //draw 15 random rectangles.
            g2.setStroke(new BasicStroke(rand.nextInt(25)));
            g2.setPaint(new Color(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255)));
            Rectangle2D rect = new Rectangle2D.Double(rand.nextInt(xCoord), rand.nextInt(yCoord), 
                    rand.nextInt(500), rand.nextInt(500));
            Shape rect1 = affineTransform.createTransformedShape(rect);
            g2.draw(rect1);

            //draw 15 random lines.
            g2.setStroke(new BasicStroke(rand.nextInt(25)));
            g2.setPaint(new Color(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255)));
            Line2D line = new Line2D.Double(rand.nextInt(xCoord), rand.nextInt(yCoord), 
                    rand.nextInt(500), rand.nextInt(500));
            g2.draw(line);

            //randomizes when rectangles and ellipses get filled.
            if ((evenOdd & 1) == 0) {
                g2.fill(rect);
            } else {
                g2.fill(ellipse);
            }
        }
        
        String signature = "Ben Foster";
        Font f = new Font("Edwardian Script ITC", Font.ITALIC, 40);
        g2.setFont(f);

        FontRenderContext context = g2.getFontRenderContext();
        Rectangle2D bounds = f.getStringBounds(signature, context);

        double x = (backW - bounds.getWidth() - 20);
        double y = (backH - bounds.getHeight() + 40);
        
        g2.setPaint(Color.WHITE);
        g2.drawString(signature, (int) x, (int) y);
    }

    public Dimension getPreferredSize() {
        return new Dimension(defaultWidth, defaultHeight);
    }
}