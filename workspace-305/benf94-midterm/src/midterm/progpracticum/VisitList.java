package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.TreeMap;

/** VisitList reads the Visits.txt files and makes an ArrayList of TreeMaps that contain the patient IDs as keys and Procedure IDs as variables.
 * @author benf94
 * @version 11/1/2013
 */
public class VisitList {

    private static String thisID;
    private static String thisProcedureID;
    private static String visitDate;
    private static int numberOfVisits;
    private static ArrayList<String> patIDList = new ArrayList<String>();
    private static ArrayList<String> proIDList;
    private static TreeMap<String, ArrayList<String>> patientVisitMap;
    private static ArrayList<TreeMap<String, ArrayList<String>>> mapList
        = new ArrayList<TreeMap<String, ArrayList<String>>>();

    public int getNumberOfVisits() {
        return numberOfVisits;
    }

    public String getVisitDate() {
        return visitDate;
    }

    public ArrayList<TreeMap<String, ArrayList<String>>> getMapList() {
        return mapList;
    }

    public void readVisitInfo(String aFileName) {
        try {
            int i = 0;
            final FileReader fr = new FileReader(aFileName);
            final BufferedReader br = new BufferedReader(fr);
            String fileReaderLine;

            while ((fileReaderLine = br.readLine()) != null) {
                i++;
                int j = 0;
                final StringTokenizer tokenizer = new StringTokenizer(fileReaderLine, "\t");

                if (i == 1) {
                    visitDate = tokenizer.nextToken();
                }

                if (i > 1) {
                    j++;
                    numberOfVisits++;
                    patientVisitMap = new TreeMap<String, ArrayList<String>>();
                    proIDList = new ArrayList<String>();
                    while (tokenizer.hasMoreTokens()) {
                        if (j == 1) {
                            thisID = tokenizer.nextToken();
                            patIDList.add(thisID);
                            j++;
                        }
                        
                        if (j > 1) {
                            thisProcedureID = tokenizer.nextToken();
                            proIDList.add(thisProcedureID);
                            
                        }
                        patientVisitMap.put(thisID, proIDList);
                    }
                    mapList.add(patientVisitMap);
                }
            } br.close();
        } catch (final Exception e) {
            System.out.println("Exception while reading file: " + e.getMessage());
            e.printStackTrace();
        }
    }
}