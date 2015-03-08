package eight.progpracticum;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Toolkit;
import javax.swing.Action;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;

public class NotePadGUI {
	
	private static final Toolkit KIT = Toolkit.getDefaultToolkit();
	private static final Dimension screenSize = KIT.getScreenSize();
	private static final double width = screenSize.width * 0.85;
	private static final double height = screenSize.height *0.85;
	private final JFrame myFrame;
	private final JTextArea myTextArea;
	private Image myIcon = Toolkit.getDefaultToolkit().getImage("NotePad-Icon.gif");
	private Action[] myActions;
	
	
	public NotePadGUI() {
		
		myFrame = new JFrame("Ben's NotePad Knock-off!");
		myFrame.setIconImage(myIcon);
		myFrame.setSize((int) Math.round(width), (int) Math.round(height));
		myFrame.setLocationRelativeTo(null);
		myFrame.setVisible(true);
		
		JScrollPane myScrollPane = new JScrollPane();
		
		myTextArea = new JTextArea();
		myTextArea.setWrapStyleWord(true);
		
		setUpActions();
		MenuBar myMenuBar = new MenuBar(myActions, myFrame);
		
		myFrame.add(myScrollPane, BorderLayout.CENTER);
		myScrollPane.setViewportView(myTextArea);
		myFrame.setJMenuBar(myMenuBar);
	}
	
	private void setUpActions() {
		myActions = new Action[7];
		
		myActions[0] = new FileAction("New", myFrame, myTextArea);
		myActions[1] = new FileAction("Open", myFrame, myTextArea);
		myActions[2] = new FileAction("Save", myFrame, myTextArea);
		myActions[3] = new FileAction("Print", myFrame, myTextArea);
		myActions[4] = new FileAction("Exit", myFrame, myTextArea);
		myActions[5] = new FormatAction("Word Wrap", myTextArea);
		myActions[6] = new FormatAction("Font...", myTextArea);
	}
}
