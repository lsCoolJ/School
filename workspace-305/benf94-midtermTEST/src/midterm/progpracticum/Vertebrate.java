package midterm.progpracticum;

/**
 * @author Monika
 * @custom.inv this is my class invariant
 * @custom.post this is my method postcondition
 */
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

    /**
     * @return the myClass
     */
    public VertClass getMyClass() {
        return myClass;
    }
    /**
     * @param aClass the myClass to set
     */
    public void setMyClass(final VertClass aClass) {
        this.myClass = aClass;
    }
    /**
     * @return the mySpecies
     */
    public String getMySpecies() {
        return mySpecies;
    }
    /**
     * @param aSpecies the mySpecies to set
     */
    public void setMySpecies(final String aSpecies) {
        this.mySpecies = aSpecies;
    }
    /**
     * @return the myGender
     */
    public VertGender getMyGender() {
        return myGender;
    }
    /**
     * @param aGender the myGender to set
     */
    public void setMyGender(final VertGender aGender) {
        this.myGender = aGender;
    }
    /**
     * @return the myAge
     */
    public double getMyAge() {
        return myAge;
    }
    /**
     * @param aAge the myAge to set
     */
    public void setMyAge(final double aAge) {
        this.myAge = aAge;
    }
    /**
     * @return the myHeight
     */
    public double getMyHeight() {
        return myHeight;
    }
    /**
     * @param aHeight the myHeight to set
     */
    public void setMyHeight(final double aHeight) {
        this.myHeight = aHeight;
    }
    /**
     * @return the myWeight
     */
    public double getMyWeight() {
        return myWeight;
    }
    /**
     * @param aWeight the myWeight to set
     */
    public void setMyWeight(final double aWeight) {
        this.myWeight = aWeight;
    }
    /**
     * @return the myCall
     */
    public String getMyCall() {
        return myCall;
    }
    /**
     * @param aCall the myCall to set
     */
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
