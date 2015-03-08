package midterm.progpracticum;

public class Procedure {
    
    private int myProcedureID;
    private String myProcedureName;
    private double myProcedureFee;
    private int myProcedureQuantity;
    
    public Procedure(final int aProcedureID, final String aProcedureName, final double aProcedureFee, final int aProcedureQuantity) {
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

    public String toString() {
        String returnString = "Procedure: " + myProcedureName
                + "\nID: " + myProcedureID + "\nFee: " 
                + myProcedureFee + "\nQuantity: " + myProcedureQuantity;
        return returnString;
    }
}
