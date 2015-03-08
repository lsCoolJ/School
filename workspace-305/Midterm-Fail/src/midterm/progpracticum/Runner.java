package midterm.progpracticum;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList; 

public class Runner {

    public static final String petsFileName = "myresources/pets.csv";
    public static final String proceduresFileName = "myresources/procedures.csv";
    public static String visitDateMin;
    public static String visitDateMax;
    public static final ArrayList<Patient> patientList = new ArrayList<Patient>();
    private static ArrayList<Procedure> myProList1 = new ArrayList<Procedure>();
    private static ArrayList<String> myAddPro = new ArrayList<String>();

    private static ProcedureList myProList = new ProcedureList();

    public void setMyProList() {
        myProList.readProceduresFile("myresources/procedures.csv");
        myProList1 = myProList.getProcedureList();
    }
    
    public static void main(String[] args) throws IOException {
        //readPetsFile(petsFileName);
        //readProceduresFile(proceduresFileName);

        //readVisitInfo("myresources/visits1.txt");
        VisitList visList = new VisitList();
        visList.setMyProList();
        
        String[] visitList = new File("myresources/").list();
        
        int myProcedureCounter = 0;

        ArrayList<String> dates = new ArrayList<String>();
        ArrayList<String> procedures = new ArrayList<String>();

        for (String file: visitList) {
            if (file.endsWith(".txt")) {
                visList.readVisitInfo("myresources/" + file);
                dates.add(visList.getVisitDate());
                procedures = visList.getProcedures();
                //System.out.println(procedures);
            }
        }

        visitDateMin = dates.get(0);
        visitDateMax = dates.get(0);
        for (int i = 0; i < dates.size(); i++) {
            if ((dates.get(i).compareTo(visitDateMax)) > 0) {
                visitDateMax = dates.get(i);
            }
            if ((dates.get(i).compareTo(visitDateMin)) < 0) {
                visitDateMin = dates.get(i);
            }
        }

        for (Procedure IDs: myProList1) {
            for (String pro: myAddPro) {
              System.out.println("asdfasdf");  
            }
        }
        
       for (Procedure IDs: myProList1) {
           for (String pro: myAddPro) {
               if ((IDs.getMyProcedureID()) == Integer.parseInt(pro)) {
                   myProcedureCounter++;
               }
           }
           System.out.println("Procedure ID " + IDs.getMyProcedureID() + " was present " + myProcedureCounter + " times.");
       }

        System.out.println("Period from: " + visitDateMin + " to " + visitDateMax);
    }
}
