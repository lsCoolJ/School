package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.SortedMap;
import java.util.StringTokenizer;
import java.util.TreeMap;

public class PatientList {
    
    public static final String petsFileName = "myresources/pets.csv";
    public static final ArrayList<Patient> patientList = new ArrayList<Patient>();
    //private static SortedMap map = Collections.synchronizedSortedMap( new TreeMap());
    
    public PatientList() {
    }
    
    public void readPetsFile(String fileName) {
        //System.out.println("Reading Pets File: " + fileName);
        final ArrayList<Patient> patientList = new ArrayList<Patient>();
        
        try {
            int i = 0;

            FileReader fr = new FileReader(fileName);
            BufferedReader br = new BufferedReader(fr);
            String fileReaderLine;

            while ((fileReaderLine = br.readLine()) != null) {
                i++;
                //System.out.println(fileReaderLine);

                if (i > 1) {
                    StringTokenizer tokenizer = new StringTokenizer(fileReaderLine, ",");

                    while (tokenizer.hasMoreTokens()) {
                        //System.out.println("Pet: " + (i-1));

                        final int ID = Integer.parseInt(tokenizer.nextToken());
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

                        Patient pat = new Patient(ID, vClass, species, gender, age, height, weight, call, name, address, owner);
                        patientList.add(pat);
                       // System.out.println("element added to patient list");
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Exception while reading file: " + e.getMessage() + "\n");
        }
        
        //System.out.println(patientList.get(99));
    }
    
    
    public ArrayList<Patient> getPatientList() {
        return patientList;
    }
}
