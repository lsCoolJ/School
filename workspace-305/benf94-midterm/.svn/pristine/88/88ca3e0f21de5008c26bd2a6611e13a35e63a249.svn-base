package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.TreeMap;

/** ProcedureList reads the procedures.csv file and creates an ArrayList of Procedures.
 * @author benf94
 * @version 10/29/2013
 */
public class ProcedureList {

    public static final ArrayList<Procedure> PROCEDURE_LIST = new ArrayList<Procedure>();
    private static TreeMap<Integer, Procedure> procedureMap 
        = new TreeMap<Integer, Procedure>();
    
    public ProcedureList() { }
    
    public void readProceduresFile(String aFileName) {

        try {
            int i = 0;

            final FileReader fr = new FileReader(aFileName);
            final BufferedReader br = new BufferedReader(fr);
            String fileReaderLine;

            while ((fileReaderLine = br.readLine()) != null) {
                i++;

                if (i > 1) {
                    final StringTokenizer tokenizer = new StringTokenizer(fileReaderLine, ",");

                    while (tokenizer.hasMoreTokens()) {

                        final int thisID = Integer.parseInt(tokenizer.nextToken());
                        final String name = tokenizer.nextToken();
                        final double fee = Double.parseDouble(tokenizer.nextToken());
                        final int quantity = 0;

                        final Procedure pro = new Procedure(thisID, name, fee, quantity);
                        PROCEDURE_LIST.add(pro);
                        
                        procedureMap.put(thisID, pro);
                    }
                }
            } br.close();
        } catch (final Exception e) {
            System.out.println("Exception while reading file: " + e.getMessage());
        }
    }
    
    public ArrayList<Procedure> getProcedureList() {
        return PROCEDURE_LIST;
    }
}
