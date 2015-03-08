package midterm.progpracticum;

public class Vertebrate {

    private VertClass myClass;
    private String mySpecies;
    private VertGender myGender;
    private double myAge;
    private double myHeight;
    private double myWeight;
    private String myCall;

    public Vertebrate() {
        myClass = VertClass.NONE;
        mySpecies = "None";
        myGender = VertGender.OTHER;
        myAge = 0.0;
        myHeight = 0.0;
        myWeight = 0.0;
        myCall = "None";
    }

    public Vertebrate(VertClass aClass, String aSpecies, VertGender aGender, double aAge,
                      double aHeight, double aWeight, String aCall) {

        myClass = aClass;
        mySpecies = aSpecies;
        myGender = aGender;
        myAge = aAge;
        myHeight = aHeight;
        myWeight = aWeight;
        myCall = aCall;
    }

    public VertClass getMyClass() {
        return myClass;
    }

    public void setMyClass(final VertClass aClass) {
        this.myClass = aClass;
    }

    public String getMySpecies() {
        return mySpecies;
    }

    public void setMySpecies(final String aSpecies) {
        this.mySpecies = aSpecies;
    }

    public VertGender getMyGender() {
        return myGender;
    }

    public void setMyGender(final VertGender aGender) {
        this.myGender = aGender;
    }

    public double getMyAge() {
        return myAge;
    }

    public void setMyAge(final double aAge) {
        this.myAge = aAge;
    }

    public double getMyHeight() {
        return myHeight;
    }

    public void setMyHeight(final double aHeight) {
        this.myHeight = aHeight;
    }

    public double getMyWeight() {
        return myWeight;
    }

    public void setMyWeight(final double aWeight) {
        this.myWeight = aWeight;
    }

    public String getMyCall() {
        return myCall;
    }

    public void setMyCall(final String aCall) {
        this.myCall = aCall;
    }

    @Override
    public String toString() {
        String toReturn = "\nClass: " + myClass + "\nSpecies: " + mySpecies + "\nGender: " + myGender;
        toReturn += "\nAge: " + myAge + "\nHeight: " + myHeight + "\nWeight: " + myWeight + "\nSpeech: " + myCall;
        toReturn += "\n------\n";
        return toReturn;
    }
}
