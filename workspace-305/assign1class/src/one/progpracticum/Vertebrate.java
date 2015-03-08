/**
 * 
 */
package one.progpracticum;

/**
 * @author Monika
 *
 */
public class Vertebrate {
     

    protected String myClass;
    protected String mySpecies;
    protected char myGender;
    protected double myAge;
    protected double myHeight;
    protected double myWeight;
    protected String myCall;
  
    public Vertebrate() {
        this.myClass = "None";
        this.mySpecies = "None";
        this.myGender = 'N';
        this.myCall = "None";
    }
    
    public Vertebrate(String myClass, String mySpecies, char myGender, double myAge,
                      double myHeight, double myWeight, String myCall) {
        //super();
        this.myClass = myClass;
        this.mySpecies = mySpecies;
        this.myGender = myGender;
        this.myAge = myAge;
        this.myHeight = myHeight;
        this.myWeight = myWeight;
        this.myCall = myCall;
    }
    
    /**
     * @return the myClass
     */
    public String getMyClass() {
        return myClass;
    }
    /**
     * @param myClass the myClass to set
     */
    public void setMyClass(String myClass) {
        this.myClass = myClass;
    }
    /**
     * @return the mySpecies
     */
    public String getMySpecies() {
        return mySpecies;
    }
    /**
     * @param mySpecies the mySpecies to set
     */
    public void setMySpecies(String mySpecies) {
        this.mySpecies = mySpecies;
    }
    /**
     * @return the myGender
     */
    public char getMyGender() {
        return myGender;
    }
    /**
     * @param myGender the myGender to set
     */
    public void setMyGender(char myGender) {
        this.myGender = myGender;
    }
    /**
     * @return the myAge
     */
    public double getMyAge() {
        return myAge;
    }
    /**
     * @param myAge the myAge to set
     */
    public void setMyAge(double myAge) {
        this.myAge = myAge;
    }
    /**
     * @return the myHeight
     */
    public double getMyHeight() {
        return myHeight;
    }
    /**
     * @param myHeight the myHeight to set
     */
    public void setMyHeight(double myHeight) {
        this.myHeight = myHeight;
    }
    /**
     * @return the myWeight
     */
    public double getMyWeight() {
        return myWeight;
    }
    /**
     * @param myWeight the myWeight to set
     */
    public void setMyWeight(double myWeight) {
        this.myWeight = myWeight;
    }
    /**
     * @return the myCall
     */
    public String getMyCall() {
        return myCall;
    }
    /**
     * @param myCall the myCall to set
     */
    public void setMyCall(String myCall) {
        this.myCall = myCall;
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
