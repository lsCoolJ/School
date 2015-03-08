package eight.progpracticum;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Toolkit;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

@SuppressWarnings("serial")
public class FormatFrame extends JFrame {
	
	private final static Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
	private final static double width = screenSize.getWidth() / 1.5;
	private final static double height = screenSize.getHeight() / 1.5;
	
	public FormatFrame() {
		super("Change your font.");
		
		setSize((int) Math.round(width), (int) Math.round(height));
		setLocationRelativeTo(null);
		setVisible(true);
		
		final JPanel panelWest = new JPanel();
		//panelWest.setAlignmentX(CENTER_ALIGNMENT);
		
		final JPanel panelCenter = new JPanel();
		
		final JPanel panelEast = new JPanel();
		
		add(panelWest, BorderLayout.WEST);
		add(panelCenter, BorderLayout.CENTER);
		add(panelEast, BorderLayout.EAST);
		
		final JLabel type = new JLabel("Font Type");
		final JLabel style = new JLabel("Font Style");
		final JLabel size = new JLabel("Font Size");
		
		panelWest.add(type);
		panelCenter.add(style);
		panelEast.add(size);
	}
}
