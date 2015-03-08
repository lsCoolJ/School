package eight.progpracticum;

import java.awt.event.ActionEvent;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.JCheckBox;
import javax.swing.JTextArea;

@SuppressWarnings("serial")
public class FormatAction extends AbstractAction {
	
	
	public FormatAction(final String aName, final JTextArea aTextArea) {
		putValue(Action.NAME, aName);
		putValue("area", aTextArea);
		
		final char mnemonic = aName.toUpperCase().charAt(0);
		putValue(Action.MNEMONIC_KEY, (int) mnemonic);
	}
	
	@Override
	public void actionPerformed(ActionEvent anE) {
		final String cboxClass = "class javax.swing.JCheckBox";
		final String mItemClass = "class javax.swing.JMenuItem";
		final String sourceClass = anE.getSource().getClass().toString();
		final JTextArea myTextArea = (JTextArea) getValue("area");
		
		if (sourceClass.equals(cboxClass)) {
			final JCheckBox source = (JCheckBox) anE.getSource();
			if (source.isSelected()) {
				myTextArea.setLineWrap(true);
			} else {
				myTextArea.setLineWrap(false);
			}
		}
		
		if (sourceClass.equals(mItemClass)) {
			//final JMenuItem source = (JMenuItem) anE.getSource();
			final FormatFrame formatFrame = new FormatFrame();
			
		}
	}

}
