package midterm.progpracticum;

/** Procedure constructs a Procedure with specific parameters.
 * @author benf94
 * @version 10/28/2013
 */
public class Procedure {
    
    private int myProcedureID;
    private String myProcedureName;
    private double myProcedureFee;
    private int myProcedureQuantity;
    
    public Procedure(final int aProcedureID, final String aProcedureName,
                     final double aProcedureFee, final int aProcedureQuantity) {
        myProcedureID = aProcedureID;
        myProcedureName = aProcedureName;
        myProcedureFee = aProcedureFee;
        myProcedureQuantity = aProcedureQuantity;
    }
    
    public Procedure() {
        myProcedureID = 0;
        myProcedureName = "none";
        myProcedureFee = 0.0;
        myProcedureQuantity = 0;
    }
    
    public void addQuantity(int aQuantity) {
        myProcedureQuantity = myProcedureQuantity + aQuantity;
    }
    
    public int getMyProcedureID() {
        return myProcedureID;
    }
    
    public String getMyProcedureName() {
        return myProcedureName;
    }
    
    public double getMyProcedureFee() {
        return myProcedureFee;
    }
    
    public int getMyProcedureQuantity() {
        return myProcedureQuantity;
    }
    
    public void setMyProcedureID(int aProcedureID) {
        myProcedureID = aProcedureID;
    }
    
    public void setMyProcedureName(String aProcedureName) {
        myProcedureName = aProcedureName;
    }
    
    public void setMyProcedureFee(double aProcedureFee) {
        myProcedureFee = aProcedureFee;
    }
    
    public void setMyProcedureQuantity(int aProcedureQuantity) {
        myProcedureQuantity = aProcedureQuantity;
    }
    
    @Override
    public String toString() {
        final String returnString = "\nProcedure: " + myProcedureName
                + "\nID: " + myProcedureID + "\nFee: " 
                + myProcedureFee + "\nQuantity: " + myProcedureQuantity + "\n";
        return returnString;
    }
}
