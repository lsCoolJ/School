package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TreeMap;

public class VisitList {

    private static String thisID = null;
    private static String thisProcedureID = null;
    private static String visitDate = null;
    private static int numberOfVisits = 0;
    private static ArrayList<String> patIDList = new ArrayList<String>();
    private static ArrayList<String> proIDList;
    private static TreeMap<String,ArrayList<String>> patientVisitMap;
    private static ArrayList<TreeMap<String, ArrayList<String>>> mapList = new ArrayList<TreeMap<String,ArrayList<String>>>();

    public int getNumberOfVisits() {
        return numberOfVisits;
    }

    public String getVisitDate() {
        return visitDate;
    }

    public ArrayList<TreeMap<String,ArrayList<String>>> getMapList() {
        return mapList;
    }

    public void readVisitInfo(String fileName) {
        try {
            int i = 0;
            FileReader fr = new FileReader(fileName);
            BufferedReader br = new BufferedReader(fr);
            String fileReaderLine;

            while ((fileReaderLine = br.readLine()) != null) {
                i++;
                int j = 0;
                StringTokenizer tokenizer = new StringTokenizer(fileReaderLine, "\t");

                if (i == 1) {
                    visitDate = tokenizer.nextToken();
                    //System.out.println("\n" + visitDate);
                }

                if (i > 1) {
                    j++;
                    numberOfVisits++;
                    //System.out.println(fileReaderLine);
                    patientVisitMap = new TreeMap<String,ArrayList<String>>();
                    proIDList = new ArrayList<String>();
                    while (tokenizer.hasMoreTokens()) {
                        if (j == 1) {
                            thisID = tokenizer.nextToken();
                            //System.out.println("Patient: " + thisID);
                            patIDList.add(thisID);
                            j++;
                        }
                        
                        if (j > 1) {
                            thisProcedureID = tokenizer.nextToken();
                            //System.out.println("Procedure: " + thisProcedureID);
                            proIDList.add(thisProcedureID);
                            
                        }
                        patientVisitMap.put(thisID, proIDList);
                    }
                    mapList.add(patientVisitMap);
                }
            } br.close();
        } catch (Exception e) {
            System.out.println("Exception while reading file: " + e.getMessage());
            e.printStackTrace();
        }
    }










    /*private static String visitDate = "";
    private static int numberOfVisits = 0;
    private static TreeMap<String, ArrayList<String>> thisVisitMap = new TreeMap<String,ArrayList<String>>();
    private static String key = null;
    private static ArrayList<String> value;

    public String getVisitDate() {
        return visitDate;
    }

    public TreeMap<String, ArrayList<String>> getVisitMap() {
        return thisVisitMap;
    }

    public void readVisitInfo(String fileName) {

        try {
            int i = 0;

            FileReader fr = new FileReader(fileName);
            BufferedReader br = new BufferedReader(fr);
            String fileReaderLine;

            while ((fileReaderLine = br.readLine()) != null) {
                i++;
                int j = 0;
                String thisID = "";
                String thisProcedureID = "";
                StringTokenizer tokenizer = new StringTokenizer(fileReaderLine, "\t");

                if (i == 1) {
                    visitDate = tokenizer.nextToken();
                    //System.out.println("\n\n\n" + visitDate);
                }
                ArrayList<String> thisProcedureIDList = new ArrayList<String>();
                if (i > 1) {
                    j++;
                    //System.out.println(fileReaderLine);
                    numberOfVisits++;
                    while (tokenizer.hasMoreTokens()) {


                        if (j == 1) {
                            thisID = tokenizer.nextToken();
                            System.out.println("Patient: " + thisID);
                            j++;

                        } else {
                            thisProcedureID = tokenizer.nextToken();
                            System.out.println("Procedure: " + thisProcedureID);
                            j++;
                            //myAddPro.add(thisProcedureID);

                            thisProcedureIDList.add(thisProcedureID);
                        } 
                    }
                    thisVisitMap.put(thisID, thisProcedureIDList);
                }
            } br.close();
            for (Map.Entry<String,ArrayList<String>> entry: thisVisitMap.entrySet()) {
                key = entry.getKey();
                value = entry.getValue();
                //String indexValue = value.get(0);
                //System.out.println("Key: " + key + " value: " + value + "indexValue: " + indexValue + "\n");
            }
        } catch (Exception e) {
            e.printStackTrace();
            //System.out.println("Exception while reading file: " + e.printStackTrace());
        }
        System.out.println("Total number of visits: " + numberOfVisits);
    }*/
}


