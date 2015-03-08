package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class VisitList {

    private static String visitDate = null;
    private static ProcedureList myProList = new ProcedureList();
    private static PatientList myPatList = new PatientList();
    private static ArrayList<Procedure> myProList1;
    private static ArrayList<Patient> myPatList1;
    private static ArrayList<String> myAddPro = new ArrayList<String>();
    private static double fileTotalFee = 0.0;
    private static int numberOfVisits = 0;

    public void setMyProList() {
        myProList.readProceduresFile("myresources/procedures.csv");
        myProList1 = myProList.getProcedureList();
        myPatList.readPetsFile("myresources/pets.csv");
        myPatList1 = myPatList.getPatientList();
    }

    public String getVisitDate() {
        return visitDate;
    }

    public ArrayList<String> getProcedures() {
        return myAddPro;
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
                            //System.out.println("Procedure: " + thisProcedureID);
                            j++;
                            myAddPro.add(thisProcedureID);

                            Visit thisVisit = new Visit(thisID, thisProcedureID);
                            System.out.println(thisVisit.getMyID() + " " + thisVisit.getMyProcedureID());
                            for (Procedure IDs: myProList1) {
                                if (IDs.getMyProcedureID() == thisVisit.getMyProcedureID()) {
                                    //System.out.println(IDs.getMyProcedureFee());
                                    fileTotalFee = fileTotalFee + IDs.getMyProcedureFee();
                                    //System.out.println(fileTotalFee);
                                }
                            }
                        }
                    }
                }
            } br.close();
        } catch (Exception e) {
            e.printStackTrace();
            //System.out.println("Exception while reading file: " + e.printStackTrace());
        }
        System.out.println("Total Fee: " + fileTotalFee);
        System.out.println("Total Number of Visits: " + numberOfVisits);
    }
}
