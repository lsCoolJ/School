package eight.progpracticum;

import java.awt.event.ActionEvent;
import java.awt.print.PrinterException;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;
import javax.swing.filechooser.FileNameExtensionFilter;

/** This class is the File action class that
 *  defines what each action does for the File menu.
 * @author benf94
 * @version 11/28/2013
 */
@SuppressWarnings("serial")
public class FileAction extends AbstractAction {

    /**
     * Used to get rid of checkstyle errors.
     */
    private static final String FRAME_STRING = "frame";

    /**
     * Used to get rid of checkstyle errors.
     */
    private static final String AREA_STRING = "area";

    /**
     * Used to make lines shorter.
     */
    private static final String NEW_MESS = "Would you like to create a new text"
            + " document and erase all current text?";

    /**
     * Used to make lines shorter.
     */
    private static final int WARN_MESS = JOptionPane.WARNING_MESSAGE;

    /**
     * Used to make lines shorter.
     */
    private static final int OPTION_TYPE = JOptionPane.YES_NO_OPTION;

    /**
     * @param aName is the name of the menu item.
     * @param aFrame is the main frame that everything is on.
     * @param aTextArea is the text area that everything is being typed on.
     */
    public FileAction(final String aName, final JFrame aFrame, final JTextArea aTextArea) {
        putValue(Action.NAME, aName);
        putValue(FRAME_STRING, aFrame);
        putValue(AREA_STRING, aTextArea);
    }

    @Override
    public void actionPerformed(ActionEvent anE) {
        final JFrame mainFrame = (JFrame) getValue(FRAME_STRING);
        final JTextArea textArea = (JTextArea) getValue(AREA_STRING);
        final JMenuItem source = (JMenuItem) anE.getSource();
        final String sourceName = source.getActionCommand();
        final Object[] options = {"Yes", "No"};
        final Object initialValue = options[0];

        if ("New".equals(sourceName)) {
            final int thisOption = JOptionPane.showOptionDialog(mainFrame, NEW_MESS, "Hold up",
                                                                OPTION_TYPE, WARN_MESS, null,
                                                                options, initialValue);
            if (thisOption == JOptionPane.YES_OPTION) {
                textArea.setText(null);
                textArea.setFont(null);
            }
        }

        if ("Open".equals(sourceName)) {
            final JFileChooser fileChooser = new JFileChooser();
            final FileNameExtensionFilter filter
                = new FileNameExtensionFilter("Text Documents", "txt");
            fileChooser.setAcceptAllFileFilterUsed(false);
            fileChooser.setFileFilter(filter);
            final int fileChosen = fileChooser.showOpenDialog(mainFrame);
            if (fileChosen == JFileChooser.APPROVE_OPTION) {
                try {
                    final FileReader fr = new FileReader(fileChooser.getSelectedFile());
                    final BufferedReader br = new BufferedReader(fr);
                    textArea.read(br, null);
                    br.close();
                } catch (final Exception e) {
                    e.printStackTrace();
                }
            }
        }

        if ("Save".equals(sourceName)) {
            final JFileChooser fileSaveChooser = new JFileChooser();
            File fileToBeSaved;
            final int n = fileSaveChooser.showSaveDialog(mainFrame);

            if (n == JFileChooser.APPROVE_OPTION) {
                fileToBeSaved = fileSaveChooser.getSelectedFile();
                final String filePath = fileSaveChooser.getSelectedFile().getAbsolutePath();
                if (!filePath.endsWith(".rtf")) {
                    if (!filePath.endsWith(".txt")) {
                        fileToBeSaved = new File(fileSaveChooser.getSelectedFile() + ".txt");
                        JOptionPane.showMessageDialog(mainFrame,
                                                      "File saved as a text document.");
                    }
                }

                if (filePath.endsWith(".rtf")) {
                    JOptionPane.showMessageDialog(mainFrame,
                                                  "File saved as a formatted text document."
                                                  + "\nFormatting may be lost depending on "
                                                  + "where you open this file.");
                }

                if (filePath.endsWith(".txt")) {
                    JOptionPane.showMessageDialog(mainFrame, "File saved as a text document.");
                }

                try {
                    final FileWriter fw = new FileWriter(fileToBeSaved);
                    final BufferedWriter bw = new BufferedWriter(fw);
                    textArea.write(bw);
                    bw.close();
                } catch (final IOException e) {
                    e.printStackTrace(); 
                }
            }
        }

        if ("Print".equals(sourceName)) {
            try {
                textArea.append("\n");
                textArea.print();
            } catch (final PrinterException e) {
                e.printStackTrace();
            }
        }

        if ("Exit".equals(sourceName)) {
            System.exit(0);
        }
    }
}