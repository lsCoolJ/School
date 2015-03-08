package midterm.progpracticum;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.Collection;

/** Writer class writes the ProcedureReport and PatientReport.
 * @author benf94
 * @version 11/1/2013
 */
public class Writer {

    private static Runner runner = new Runner();
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
    private static double finalTotal;
    private static String visitDateMin = runner.getVisitDateMin() + ",";
    private static String visitDateMax = runner.getVisitDateMax() + "\n";
    private static int numberOfVisits = runner.getNumberOfVisits();
    private static double indiviTotal;
    private static double totalFee;
    private static String totalFeeString;

    public Writer() { }

    public void writeProcedureReport(Collection<Procedure> aProceduresList) {
        
        try {
            final FileWriter fw = new FileWriter(procedureReportFile);
            final BufferedWriter bw = new BufferedWriter(fw);
            
            bw.write(periodString + visitDateMin + visitDateMax + visitNumberString);
            bw.write(numberOfVisits + "\n" + procedureTitle + feeTitle + quantityTitle);
            bw.write(totalTitle + "\n");
            for (Procedure proc: aProceduresList) {
                bw.write(proc.getMyProcedureID() + " " + proc.getMyProcedureName() + ",");
                bw.write(proc.getMyProcedureFee() + ",");
                bw.write(proc.getMyProcedureQuantity() + ",");
                indiviTotal = (proc.getMyProcedureFee()) * (proc.getMyProcedureQuantity());
                bw.write(indiviTotal + "\n");
                totalFee = totalFee + indiviTotal;
            }
            totalFeeString = totalFee + "";
            bw.write(totalTitle + ",,," + totalFeeString);
            System.out.println("Procedure Report Written in the myresources/ folder.");
            
            bw.close();
        } catch (final Exception e) {
            System.out.println("Exception while writing to file: " + e.getMessage());
            e.printStackTrace();
        } 
    }

    public void writePatientReport(Collection<Patient> aPatientsList) {
        
        try {
            final FileWriter fw = new FileWriter(patientReportFile);
            final BufferedWriter bw = new BufferedWriter(fw);
            
            bw.write(periodString + visitDateMin + visitDateMax + visitNumberString);
            bw.write(numberOfVisits + "\n" + IDTitle + classTitle + speciesTitle);
            bw.write(genderTitle + ageTitle + heightTitle + weightTitle + callTitle);
            bw.write(nameTitle + addressTitle + ownerTitle + totalTitle + "\n");
            for (Patient pet: aPatientsList) {
                bw.write(pet.getMyID() + "," + pet.getMyClass() + ",");
                bw.write(pet.getMySpecies() + "," + pet.getMyGender() + ",");
                bw.write(pet.getMyAge() + "," + pet.getMyHeight() + ",");
                bw.write(pet.getMyWeight() + "," + pet.getMyCall() + ",");
                bw.write(pet.getMyName() + "," + pet.getMyAddress() + ",");
                bw.write(pet.getMyOwner() + "," + pet.getMyTotal() + "\n");
                
                finalTotal = finalTotal + pet.getMyTotal();
            }
            bw.write(totalTitle + ",,,,,,,,,,," + finalTotal);
            System.out.println("Patient Report Written in the myresources/ folder.");
            
            bw.close();
        } catch (final Exception e) {
            System.out.println("Exception while writing to file: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
