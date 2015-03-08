package midterm.progpracticum;

public class Patient {

private int myID;
private String myName;
private String myAddress;
private String myOwner;
private VertClass myClass;
private String mySpecies;
private VertGender myGender;
private double myAge;
private double myHeight;
private double myWeight;
private String myCall;
    
    public Patient() {
        myID = 0000;
        myName = "none";
        myAddress = "none";
        myOwner = "none";
        myClass = VertClass.NONE;
        mySpecies = "none";
        myGender = VertGender.OTHER;
        myAge = 0.0;
        myHeight = 0.0;
        myWeight = 0.0;
        myCall = "none";
    }

    public Patient(final int anID, final VertClass aClass, final String aSpecies, final VertGender aGender, final double anAge, final double aHeight, final double aWeight,
            final String aCall, final String aName, final String anAddress, final String anOwner) {
        
        myID = anID;
        myName = aName;
        myAddress = anAddress;
        myOwner = anOwner;
        myClass = aClass;
        mySpecies = aSpecies;
        myGender = aGender;
        myAge = anAge;
        myHeight = aHeight;
        myWeight = aWeight;
        myCall = aCall;
    }
    
    public int getID() {
        return myID;
    }
    
    public void setID(int anID) {
        myID = anID;
    }
    
    public int getMyID() {
        return myID;
    }

    public void setMyID(int myID) {
        this.myID = myID;
    }

    public String getMyName() {
        return myName;
    }

    public void setMyName(String myName) {
        this.myName = myName;
    }

    public String getMyAddress() {
        return myAddress;
    }

    public void setMyAddress(String myAddress) {
        this.myAddress = myAddress;
    }

    public String getMyOwner() {
        return myOwner;
    }

    public void setMyOwner(String myOwner) {
        this.myOwner = myOwner;
    }

    public VertClass getMyClass() {
        return myClass;
    }

    public void setMyClass(VertClass myClass) {
        this.myClass = myClass;
    }

    public String getMySpecies() {
        return mySpecies;
    }

    public void setMySpecies(String mySpecies) {
        this.mySpecies = mySpecies;
    }

    public VertGender getMyGender() {
        return myGender;
    }

    public void setMyGender(VertGender myGender) {
        this.myGender = myGender;
    }

    public double getMyAge() {
        return myAge;
    }

    public void setMyAge(double myAge) {
        this.myAge = myAge;
    }

    public double getMyHeight() {
        return myHeight;
    }

    public void setMyHeight(double myHeight) {
        this.myHeight = myHeight;
    }

    public double getMyWeight() {
        return myWeight;
    }

    public void setMyWeight(double myWeight) {
        this.myWeight = myWeight;
    }

    public String getMyCall() {
        return myCall;
    }

    public void setMyCall(String myCall) {
        this.myCall = myCall;
    }
    
    @Override
    public String toString() {
        String toReturn = "ID: " + myID + "\nName: " + myName + "\nAddress: " + myAddress + "Owner: " + myOwner 
                + "\nClass: " + myClass + "\nSpecies: " + mySpecies + "\nGender: " + myGender + "\nAge: " + myAge 
                + "\nHeight: " + myHeight + "\nWeight: " + myWeight + "\nSpeech: " + myCall + "\n------\n";
        return toReturn;
    }
}
