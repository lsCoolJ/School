package midterm.progpracticum;

/** Vertebrate constructs a vertebrate with particular parameters.
 * @author Monika
 * @author Ben Foster
 * @version 11/1/2013
 */
public class Vertebrate {

    /**
     * The Class of the pet.
     */
    private VertClass myClass;
    /**
     * The Species of the pet.
     */
    private String mySpecies;
    /**
     * The Gender of the pet.
     */
    private VertGender myGender;
    /**
     * The Age of the pet.
     */
    private double myAge;
    /**
     * The Height of the pet.
     */
    private double myHeight;
    /**
     * The weight of the pet.
     */
    private double myWeight;
    /**
     * The Call of the pet.
     */
    private String myCall;

    /**
     * Creates a default Vertebrate with everything set to none or 0.
     */
    public Vertebrate() {
        myClass = VertClass.NONE;
        mySpecies = "None";
        myGender = VertGender.OTHER;
        myAge = 0.0;
        myHeight = 0.0;
        myWeight = 0.0;
        myCall = "None";
    }

    /** Creates a Vertebrate with the given parameters.
     * @param aClass != null.
     * @param aSpecies != null.
     * @param aGender != null.
     * @param aAge >= 0
     * @param aHeight > 0
     * @param aWeight > 0
     * @param aCall != null
     */
    public Vertebrate(final VertClass aClass, final String aSpecies, final VertGender aGender,
                      final double aAge, final double aHeight, final double aWeight,
                      final String aCall) {

        myClass = aClass;
        mySpecies = aSpecies;
        myGender = aGender;
        myAge = aAge;
        myHeight = aHeight;
        myWeight = aWeight;
        myCall = aCall;
    }

    /**
     * @return the Class of the pet.
     */
    public VertClass getMyClass() {
        return myClass;
    }
    /**
     * @param aClass the myClass to set.
     */
    public void setMyClass(final VertClass aClass) {
        this.myClass = aClass;
    }
    /**
     * @return the Species of the pet.
     */
    public String getMySpecies() {
        return mySpecies;
    }
    /**
     * @param aSpecies the mySpecies to set.
     */
    public void setMySpecies(final String aSpecies) {
        this.mySpecies = aSpecies;
    }
    /**
     * @return the Gender of the pet.
     */
    public VertGender getMyGender() {
        return myGender;
    }
    /**
     * @param aGender the myGender to set.
     */
    public void setMyGender(final VertGender aGender) {
        this.myGender = aGender;
    }
    /**
     * @return the Age of the pet.
     */
    public double getMyAge() {
        return myAge;
    }
    /**
     * @param aAge the myAge to set.
     */
    public void setMyAge(final double aAge) {
        this.myAge = aAge;
    }
    /**
     * @return the Height of the pet.
     */
    public double getMyHeight() {
        return myHeight;
    }
    /**
     * @param aHeight the myHeight to set.
     */
    public void setMyHeight(final double aHeight) {
        this.myHeight = aHeight;
    }
    /**
     * @return the Weight of the pet.
     */
    public double getMyWeight() {
        return myWeight;
    }
    /**
     * @param aWeight the myWeight to set.
     */
    public void setMyWeight(final double aWeight) {
        this.myWeight = aWeight;
    }
    /**
     * @return the Call of the pet.
     */
    public String getMyCall() {
        return myCall;
    }
    /**
     * @param aCall the myCall to set.
     */
    public void setMyCall(final String aCall) {
        this.myCall = aCall;
    }

    @Override
    public String toString() {
        final String toReturn = "\nClass: " + myClass + "\nSpecies: " + mySpecies 
                + "\nGender: " + myGender + "\nAge: " + myAge + "\nHeight: " 
                + myHeight + "\nWeight: " + myWeight + "\nCall: " 
                + myCall + "\n------\n";
        return toReturn;
    }
}
