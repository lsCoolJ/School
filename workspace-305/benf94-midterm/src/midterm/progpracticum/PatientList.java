package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.TreeMap;

/** PatientList reads the pets.csv file and creates an ArrayList of patients.
 * @author benf94
 * @version 10/29/2013
 */
public class PatientList {
    
    public static final ArrayList<Patient> PATIENT_LIST = new ArrayList<Patient>();
    private static TreeMap<Integer, Patient> petMap = new TreeMap<Integer, Patient>();
    
    public PatientList() { }
    
    public void readPetsFile(String aFileName) {
        
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
                        final VertClass vClass = VertClass.valueOf(tokenizer.nextToken());
                        final String species = tokenizer.nextToken();
                        final VertGender gender = VertGender.valueOf(tokenizer.nextToken());
                        final double age = Double.parseDouble(tokenizer.nextToken());
                        final double height = Double.parseDouble(tokenizer.nextToken());
                        final double weight = Double.parseDouble(tokenizer.nextToken());
                        final String call = tokenizer.nextToken();
                        final String name = tokenizer.nextToken();
                        final String address = tokenizer.nextToken();
                        final String owner = tokenizer.nextToken();
                        final double total = 0.0;

                        final Patient pat = new Patient(thisID, vClass, species,
                                                  gender, age, height, weight,
                                                  call, name, address, owner, total);
                        PATIENT_LIST.add(pat);
                        petMap.put(thisID, pat);
                    }
                }
            } br.close();
        } catch (final Exception e) {
            System.out.println("Exception while reading file: " + e.getMessage() + "\n");
        }
    }
    
    public ArrayList<Patient> getPatientList() {
        return PATIENT_LIST;
    }
}
