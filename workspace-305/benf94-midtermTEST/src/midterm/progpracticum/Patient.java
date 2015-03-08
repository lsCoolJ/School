package midterm.progpracticum;

public class Patient extends HomePet {

private int myID;
private double myTotal;
private double myAdditionalTotal;
    
    public Patient() {
        myID = 0000;
    }

    public Patient(final int anID, final VertClass aClass, final String aSpecies, final VertGender aGender, final double anAge, final double aHeight, final double aWeight,
            final String aCall, final String aName, final String anAddress, final String anOwner, final double aTotal) {
        super(aClass, aSpecies, aGender, anAge, aHeight, aWeight, aCall, aName, anAddress, anOwner);
        
        myID = anID;
        myTotal = aTotal;
        
    }
    
    public void addTotal(double anAdditionalTotal) {
        myTotal = myTotal + anAdditionalTotal;
    }
    
    public int getMyID() {
        return myID;
    }
    
    public double getMyTotal() {
        return myTotal;
    }
    
    public void setID(int anID) {
        myID = anID;
    }
    
    public void setMyTotal(int aTotal) {
        myTotal = aTotal;
    }
    
    @Override
    public String toString() {
        String supString = super.toString();
        supString = "\nPatient ID: " + myID + "\nTotal: " + myTotal + " " + supString;
        return supString;
    }
}
