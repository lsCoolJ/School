package midterm.progpracticum;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.TreeMap;

public class Writer {

    static Runner runner = new Runner();
    private static String procedureReportFile = "myresources/ProcedureReport.csv";
    private static String patientReportFile = "myresources/PatientReport.csv";
    private static String periodString = "Period:,";
    private static String visitNumberString = "Number of visits during this period:,";
    private static String procedureTitle = "Procedure,";
    private static String feeTitle = "Fee,";
    private static String quantityTitle = "Quantity,";
    private static String totalTitle = "Total:";
    private static String IDTitle = "ID,";
    private static String classTitle = "Class,";
    private static String speciesTitle = "Species,";
    private static String genderTitle = "Gender,";
    private static String ageTitle = "Age,";
    private static String heightTitle = "Height,";
    private static String weightTitle = "Weight,";
    private static String callTitle = "Call,";
    private static String nameTitle = "Name,";
    private static String addressTitle = "Address,";
    private static String ownerTitle = "Owner,";
    private static double finalTotal = 0.0;
    private static String visitDateMin = runner.getVisitDateMin() + ",";
    private static String visitDateMax = runner.getVisitDateMax() + "\n";
    private static int numberOfVisits = runner.getNumberOfVisits();
    private static double indiviTotal = 0.0;
    private static double totalFee = 0.0;
    private static String totalFeeString = null;

    public Writer() {}

    public void WriteProcedureReport(Collection<Procedure> proceduresList) {
        
        try {
            FileWriter fw = new FileWriter(procedureReportFile);
            BufferedWriter bw = new BufferedWriter(fw);
            
            bw.write(periodString + visitDateMin + visitDateMax + visitNumberString);
            bw.write(numberOfVisits + "\n" + procedureTitle + feeTitle + quantityTitle);
            bw.write(totalTitle + "\n");
            for (Procedure proc: proceduresList) {
                bw.write(proc.getMyProcedureID() + " " + proc.getMyProcedureName() + ",");
                bw.write(proc.getMyProcedureFee() + ",");
                bw.write(proc.getMyProcedureQuantity() + ",");
                indiviTotal = (proc.getMyProcedureFee()) * (proc.getMyProcedureQuantity());
                bw.write(indiviTotal + "\n");
                totalFee = totalFee + indiviTotal;
            }
            totalFeeString = totalFee + "";
            bw.write(totalTitle + ",,," + totalFeeString);
            System.out.println("Procedure Report Written.");
            
            bw.close();
        } catch (Exception e) {
            System.out.println("Exception while writing to file: " + e.getMessage());
            e.printStackTrace();
        } 
    }

    public void WritePatientReport(Collection<Patient> patientsList) {
        
        try {
            FileWriter fw = new FileWriter(patientReportFile);
            BufferedWriter bw = new BufferedWriter(fw);
            
            bw.write(periodString + visitDateMin + visitDateMax + visitNumberString);
            bw.write(numberOfVisits + "\n" + IDTitle + classTitle + speciesTitle);
            bw.write(genderTitle + ageTitle + heightTitle + weightTitle + callTitle);
            bw.write(nameTitle + addressTitle + ownerTitle + totalTitle + "\n");
            for (Patient pet: patientsList) {
                bw.write(pet.getMyID() + "," + pet.getMyClass() + "," + pet.getMySpecies() + ",");
                bw.write(pet.getMyGender() + "," + pet.getMyAge() + "," + pet.getMyHeight() + ",");
                bw.write(pet.getMyWeight() + "," + pet.getMyCall() + "," + pet.getMyName() + ",");
                bw.write(pet.getMyAddress() + "," + pet.getMyOwner() + "," + pet.getMyTotal() + "\n");
                finalTotal = finalTotal +pet.getMyTotal();
            }
            bw.write(totalTitle + ",,,,,,,,,,," + finalTotal);
            System.out.println("Patient Report Written");
            
            bw.close();
        } catch (Exception e) {
            System.out.println("Exception while writing to file: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
