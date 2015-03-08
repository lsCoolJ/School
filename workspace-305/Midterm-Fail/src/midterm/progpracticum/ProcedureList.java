package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class ProcedureList {
    
    public static final String petsFileName = "myresources/procedures.csv";
    public static final ArrayList<Procedure> procedureList = new ArrayList<Procedure>();
    
    public ProcedureList() {}
    
    public void readProceduresFile(String fileName) {
        //System.out.println("Reading procedures file: " + fileName);

        try {
            int i = 0;

            FileReader fr = new FileReader(fileName);
            BufferedReader br = new BufferedReader(fr);
            String fileReaderLine;

            while ((fileReaderLine = br.readLine()) != null) {
                i++;

                if (i > 1) {
                    StringTokenizer tokenizer = new StringTokenizer(fileReaderLine, ",");

                    while (tokenizer.hasMoreTokens()) {
                        //System.out.println("Procedure: " + (i-1));

                        final int ID = Integer.parseInt(tokenizer.nextToken());
                        final String name = tokenizer.nextToken();
                        final double fee = Double.parseDouble(tokenizer.nextToken());

                        //System.out.println("ID: " + ID);
                        //System.out.println("Name: " + name);
                        //System.out.println("Fee: $" + fee + "\n");

                        Procedure pro = new Procedure(ID, name, fee);
                        procedureList.add(pro);
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Exception while reading file: " + e.getMessage());
        }
    }
    
    public ArrayList<Procedure> getProcedureList() {
        return procedureList;
    }
    
}
