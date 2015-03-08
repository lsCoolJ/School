package eight.progpracticum;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.Action;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.KeyStroke;

@SuppressWarnings("serial")
public class MenuBar extends JMenuBar {
	
	private static final String ABOUT = "Ben's NotePad Knock-off Program!\nVersion: 1.0\n\n";
	
	private static final String HOW = "How to use this program.";
	
	private static final int INFOM = JOptionPane.INFORMATION_MESSAGE;
	
	private JMenu myFileMenu;
	
	private JMenu myFormatMenu;
	
	private JMenu myHelpMenu;
	
	private JFrame myFrame;
	
	public MenuBar(final Action[] anAction, final JFrame aFrame) {
		super();
		
		myFrame = aFrame;
		
		myFileMenu = new JMenu("File");
		myFormatMenu = new JMenu("Format");
		myHelpMenu = new JMenu("Help");
		
		myFileMenu.setMnemonic('F');
		myFormatMenu.setMnemonic('O');
		myHelpMenu.setMnemonic('H');
		
		setUp(anAction);
	}
	
	private void setUp(Action[] anAction) {
		add(myFileMenu);
		final JMenuItem myNew = new JMenuItem(anAction[0]);
		myNew.setAccelerator(KeyStroke.getKeyStroke("ctrl N"));
		
		final JMenuItem open = new JMenuItem(anAction[1]);
		open.setAccelerator(KeyStroke.getKeyStroke("ctrl O"));
		
		final JMenuItem save = new JMenuItem(anAction[2]);
		save.setAccelerator(KeyStroke.getKeyStroke("ctrl S"));
		
		final JMenuItem print = new JMenuItem(anAction[3]);
		print.setAccelerator(KeyStroke.getKeyStroke("ctrl P"));
		
		final JMenuItem exit = new JMenuItem(anAction[4]);
		exit.setAccelerator(KeyStroke.getKeyStroke("ctrl X"));
		
		myFileMenu.add(myNew);
		myFileMenu.add(open);
		myFileMenu.add(save);
		myFileMenu.add(print);
		myFileMenu.addSeparator();
		myFileMenu.add(exit);
		
		add(myFormatMenu);
		final JCheckBox wordWrap = new JCheckBox(anAction[5]);
		
		final JMenuItem font = new JMenuItem(anAction[6]);
		
		myFormatMenu.add(wordWrap);
		myFormatMenu.addSeparator();
		myFormatMenu.add(font);
		
		add(myHelpMenu);
		final JMenuItem about = new JMenuItem("About");
		about.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent anE) {
				JOptionPane.showMessageDialog(myFrame, ABOUT, HOW, INFOM);
			}
		});
		myHelpMenu.add(about);
	}
}
