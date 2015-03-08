package midterm.progpracticum;

import java.io.File;
import java.util.ArrayList;
import java.util.TreeMap;

public class Runner {

    private static String visitDateMin;
    private static String visitDateMax;
    private static int numberOfVisits;
    private static String myPatientFile = "myresources/pets.csv";
    private static String myProcedureFile = "myresources/procedures.csv";
    private static ArrayList<String> dates = new ArrayList<String>();
    private static ArrayList<TreeMap<String,ArrayList<String>>> myMapList
        = new ArrayList<TreeMap<String,ArrayList<String>>>();
    private static ProcedureList myProcedureList1 = new ProcedureList();
    private static PatientList myPatientList1 = new PatientList();
    private static ArrayList<Procedure> myProcedureList;
    private static ArrayList<Patient> myPatientList;
    private static Procedure pro;
    private static Patient pet;
    private static TreeMap<Integer,Procedure> procListTreeMap;
    private static TreeMap<Integer, Patient> petListTreeMap;

    public Runner() {}

    public static void setMyPatientandProcedureLists() {
        myProcedureList1.readProceduresFile(myProcedureFile);
        myProcedureList = myProcedureList1.getProcedureList();
        myPatientList1.readPetsFile(myPatientFile);
        myPatientList = myPatientList1.getPatientList();
    }

    public int getNumberOfVisits() {
        return numberOfVisits;
    }

    public String getVisitDateMin() {
        return visitDateMin;
    }

    public String getVisitDateMax() {
        return visitDateMax;
    }

    public static void main(String[] args) {
        VisitList visList = new VisitList();
        setMyPatientandProcedureLists();

        String[] visitList = new File("myresources/").list(); 

        for (String file: visitList) {
            if (file.endsWith(".txt")) {
                visList.readVisitInfo("myresources/" + file);
                dates.add(visList.getVisitDate());
            }
        }
        procListTreeMap = new TreeMap<Integer, Procedure>();
        petListTreeMap = new TreeMap<Integer, Patient>();
        myMapList = visList.getMapList();
        for (TreeMap<String,ArrayList<String>> map: myMapList) {
            System.out.println("map: " + map);
            double thisPatientTotal = 0.0;

            for (String keySet: map.keySet()) {

                ArrayList<String> mapArray = map.get(keySet);
                for (String indiviPros: mapArray) {
                    int thisProcedureID = 0;
                    String thisProcedureName = null;
                    double thisProcedureFee = 0.0;
                    int thisProcedureQuantity = 0;
                    for (Procedure setProc: myProcedureList) {
                        if (Integer.parseInt(indiviPros) == setProc.getMyProcedureID()) {
                            setProc.addQuantity(1);
                            thisProcedureID = setProc.getMyProcedureID();
                            thisProcedureName = setProc.getMyProcedureName();
                            thisProcedureFee = setProc.getMyProcedureFee();
                            thisProcedureQuantity = setProc.getMyProcedureQuantity();


                            pro = new Procedure(thisProcedureID, thisProcedureName, thisProcedureFee, thisProcedureQuantity);
                            procListTreeMap.put(thisProcedureID, pro);
                        }
                    }
                }
                int thisPatientID = 0;
                String thisPatientName = null;
                String thisPatientAddress = null;
                String thisPatientOwner = null;
                VertClass thisPatientClass = VertClass.NONE;
                String thisPatientSpecies = null;
                VertGender thisPatientGender = VertGender.OTHER;
                double thisPatientAge = 0.0;
                double thisPatientHeight = 0.0;
                double thisPatientWeight = 0.0;
                String thisPatientCall = null;
                String setPetTest = null;

                for (Patient setPet: myPatientList) {
                    if (Integer.parseInt(keySet) == setPet.getMyID()) {
                        setPetTest = setPet.getMyID() + "";
                        if (map.containsKey(setPetTest) == false) {
                            System.out.println("\n\n\nPatient does not exist: " + Integer.parseInt(keySet));
                        }

                        thisPatientID = setPet.getMyID();
                        thisPatientName = setPet.getMyName();
                        thisPatientAddress = setPet.getMyAddress();
                        thisPatientOwner = setPet.getMyOwner();
                        thisPatientClass = setPet.getMyClass();
                        thisPatientSpecies = setPet.getMySpecies();
                        thisPatientGender = setPet.getMyGender();
                        thisPatientAge = setPet.getMyAge();
                        thisPatientHeight = setPet.getMyHeight();
                        thisPatientWeight = setPet.getMyWeight();
                        thisPatientCall = setPet.getMyCall();
                        thisPatientTotal = setPet.getMyTotal();

                        for (String indiviPros: mapArray) {
                            for (Procedure setProc: myProcedureList) {
                                if (Integer.parseInt(indiviPros) == setProc.getMyProcedureID()) {
                                    setPet.addTotal(setProc.getMyProcedureFee());
                                    thisPatientTotal = setPet.getMyTotal();
                                    System.out.println("ThisPatientTotal: " + thisPatientTotal);
                                }
                            }
                        }

                        pet = new Patient(thisPatientID, thisPatientClass, thisPatientSpecies, thisPatientGender, thisPatientAge, thisPatientHeight, thisPatientWeight, thisPatientCall, thisPatientName, thisPatientAddress, thisPatientOwner,thisPatientTotal);
                        petListTreeMap.put(thisPatientID, pet);
                    }
                }
            }
        }


        visitDateMin = dates.get(0);
        visitDateMax = dates.get(0);
        numberOfVisits = visList.getNumberOfVisits();
        for (int i = 0; i < dates.size(); i++) {
            if ((dates.get(i).compareTo(visitDateMax)) > 0) {
                visitDateMax = dates.get(i);
            }
            if ((dates.get(i).compareTo(visitDateMin)) < 0) {
                visitDateMin = dates.get(i);
            }
        }
        Writer writer = new Writer();
        writer.WriteProcedureReport(procListTreeMap.values());
        writer.WritePatientReport(petListTreeMap.values());

        System.out.println("Period from: " + visitDateMin + " to " + visitDateMax);
        System.out.println("Number of visits during this period: " + numberOfVisits);
    }
}
