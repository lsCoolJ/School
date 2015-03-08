
package orientation.practicum;

/**
 * @author Monika
 *
 */
public class HomePet extends Vertebrate {
    
    private String myName;
    private String myAddress;
    private String myOwner;

    
    public HomePet() {
        super();
        this.myName = "None";
        this.myAddress = "None";
        this.myOwner = "None";
    }


    public HomePet(String aClass, String mySpecies, char myGender, double myAge,
                   double myHeight, double myWeight, String myCall, String myName, String myAddress, String myOwner) {
        super(aClass, mySpecies, myGender, myAge, myHeight, myWeight, myCall);
        this.myName = myName;
        this.myAddress = myAddress;
        this.myOwner = myOwner;
    }


    /**
     * @return the myName
     */
    public String getMyName() {
        return myName;
    }


    /**
     * @param myName the myName to set
     */
    public void setMyName(String myName) {
        this.myName = myName;
    }


    /**
     * @return the myAddress
     */
    public String getMyAddress() {
        return myAddress;
    }


    /**
     * @param myAddress the myAddress to set
     */
    public void setMyAddress(String myAddress) {
        this.myAddress = myAddress;
    }


    /**
     * @return the myOwner
     */
    public String getMyOwner() {
        return myOwner;
    }


    /**
     * @param myOwner the myOwner to set
     */
    public void setMyOwner(String myOwner) {
        this.myOwner = myOwner;
    }


    
    @Override
    public String toString() {
        return "HomePet \nmyName: " + myName + "\nmyAddress: " + myAddress + "\nmyOwner: "
               + myOwner + super.toString();
    }


    /**
     * @param args
     */
    public static void main(String[] args) {
        Vertebrate[] animals = {new Vertebrate("MAMMAL", "Human", 'F', 3.1, 23.30, 30.1, "language"), 
                new HomePet("MAMMAL", "Dog", 'F', 9.5, 21.0, 64.5, "woof-woof", "Raven", "some address", "Monika"),
                new HomePet()};
        
        for (Vertebrate each: animals) {
            System.out.println(each.toString());
        }

      
        HomePet pet = new HomePet();
        pet.setMyAddress("address");
        pet.setMyAge(5.9);
        pet.setMyCall("meow meow");
        pet.setMyClass("mammal");
        pet.setMyGender('M');
        pet.setMyHeight(32.5);
        pet.setMyName("Kitty");
        pet.setMyOwner("Joanna");
        pet.setMySpecies("cat");
        pet.setMyWeight(12.0);
        
        // testing getters
        System.out.println(pet.getMyAddress());
        System.out.println(pet.getMyAge());
        System.out.println(pet.getMyCall());
        System.out.println(pet.getMyClass());
        System.out.println(pet.getMyGender());
        System.out.println(pet.getMyHeight());
        System.out.println(pet.getMyName());
        System.out.println(pet.getMyOwner());
        System.out.println(pet.getMySpecies());
        System.out.println(pet.getMyWeight());   
        
        System.out.println(pet.toString());

    }

}
