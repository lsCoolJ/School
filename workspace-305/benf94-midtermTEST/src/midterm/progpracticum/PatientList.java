package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.SortedMap;
import java.util.StringTokenizer;
import java.util.TreeMap;

public class PatientList {
    
    public static final ArrayList<Patient> patientList = new ArrayList<Patient>();
    private static TreeMap<Integer,Patient> petMap = new TreeMap<Integer,Patient>();
    
    public PatientList() {}
    
    public void readPetsFile(String fileName) {
        //System.out.println("Reading Pets File: " + fileName);
        
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
                        final double total = 0.0;

                        Patient pat = new Patient(ID, vClass, species, gender, age, height, weight, call, name, address, owner, total);
                        patientList.add(pat);
                        petMap.put(ID, pat);
                    }
                }
            }
        } catch (Exception e) {
            System.out.println("Exception while reading file: " + e.getMessage() + "\n");
        }
    }
    
    public ArrayList<Patient> getPatientList() {
        return patientList;
    }
    
    public TreeMap<Integer,Patient> getMapList() {
        return petMap;
    }
}
