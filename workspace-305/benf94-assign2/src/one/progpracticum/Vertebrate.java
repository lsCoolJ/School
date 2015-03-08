package one.progpracticum;

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
        this.myClass = VertClass.NONE;
        this.mySpecies = "None";
        this.myGender = VertGender.OTHER;
        this.myCall = "None";
    }

    public Vertebrate(VertClass aClass, String aSpecies, VertGender aGender, double aAge,
                      double aHeight, double aWeight, String aCall) {
        //super();
        this.myClass = aClass;
        this.mySpecies = aSpecies;
        this.myGender = aGender;
        this.myAge = aAge;
        this.myHeight = aHeight;
        this.myWeight = aWeight;
        this.myCall = aCall;
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
    public void setMyClass(VertClass aClass) {
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
    public void setMySpecies(String aSpecies) {
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
    public void setMyGender(VertGender aGender) {
        if (aGender == null) { throw new IllegalArgumentException("gender cannot be null"); }
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
    public void setMyAge(double aAge) {
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
    public void setMyHeight(double aHeight) {
        if (aHeight <= 0) throw new IllegalArgumentException("height cannot be negative");
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
    public void setMyWeight(double aWeight) {
        if (aWeight < 0) throw new IllegalArgumentException("weight cannot be negative");
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
    public void setMyCall(String aCall) {
        this.myCall = aCall;
    }

    @Override
    public String toString() {
        String toReturn = "\nClass: " + myClass + "\nSpecies: " + mySpecies + "\nGender: " + myGender;
        toReturn += "\nAge: " + myAge + "\nHeight: " + myHeight + "\nWeight: " + myWeight + "\nSpeech: " + myCall;
        toReturn += "\n------\n";
        return toReturn;
    }

    /**
     * @param args
     */
    /*public static void main(String[] args) {

        Vertebrate someAnimal = new Vertebrate();
        Vertebrate otherAnimal = new Vertebrate("Mammal", "Human", 'F', 3.1, 23.30, 30.1, "language");
        System.out.println(someAnimal.toString());
        System.out.println(otherAnimal.toString());

    }*/

}
