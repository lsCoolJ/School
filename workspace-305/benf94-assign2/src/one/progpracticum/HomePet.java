package one.progpracticum;

/**
 * @author benf94
 * @version 8.0
 */
public class HomePet extends Vertebrate {

    /**
     * @param myName is the name of the HomePet
     */
    private String myName;
    /**
     * @param myAddress is the address of the HomePet
     */
    private String myAddress;
    /**
     * @param myOwner is the owner of the HomePet
     */
    private String myOwner;

    /**
     * Default constructor.
     */
    public HomePet() {
        this.myName = "none";
        this.myAddress = "none";
        this.myOwner = "none";
    } 

    /**
     * Constructor takes following parameters.
     * @param aClass sets class
     * @param aSpecies sets species
     * @param aGender 
     * sets gender
     * @param aAge sets age
     * @param aHeight sets height
     * @param aWeight sets weight
     * @param aCall sets call
     * @param aName sets name
     * @param anAddress sets address
     * @param anOwner sets owner
     */
    public HomePet(final VertClass aClass, final String aSpecies, final VertGender aGender, final double aAge, final double aHeight, final double aWeight,
                   final String aCall, final String aName, final String anAddress, final String anOwner) {
        super(aClass, aSpecies, aGender, aAge,
              aHeight, aWeight, aCall);

        this.myName = aName;
        this.myAddress = anAddress;
        this.myOwner = anOwner;
    }

    /**
     * @return myName
     */
    public String getName() {
        return myName;
    }
    /**
     * @param aName sets name
     */
    public void setName(String aName) {
        this.myName = aName;
    }
    /**
     * @return myAddress
     */
    public String getAddress() {
        return myAddress;
    }
    /**
     * @param anAddress sets address
     */
    public void setAddress(String anAddress) {
        this.myAddress = anAddress;
    }
    /**
     * @return myOwner
     */
    public String getOwner() {
        return myOwner;
    }
    /**
     * @param anOwner sets owner
     */
    public void setOwner(String anOwner) {
        this.myOwner = anOwner;
    }
    @Override
    public String toString() {
        String supString = super.toString();
        supString = supString  + "Name: " + this.myName + "\nAddress: " + this.myAddress + "\nOwner: " + this.myOwner;
        return supString;
    }
     
    /**
     * @param args parameter for main method
     */
    public static void main(String[] args) {

        final double firstVert = 3.1;
        //final double secVert = 23.30;
        final double thirdVert = 30.1;
        final double firstHP = 9.5;
        final double secHP = 21.0;
        final double thirdHP = 64.5;

        final HomePet homePet = new HomePet();
        homePet.setName("name");
        homePet.setAddress("address");
        homePet.setOwner("owner");
        System.out.println(homePet.getName() + " "
                + homePet.getAddress() + " "
                + homePet.getOwner());

        //For Testing
        /* HomePet aHomePet = new HomePet("Mammal", "Dog", 'F', 3.1, 23.30, 30.1,
                                        "language", "Raven", "some address", "Monika");
        aHomePet.setName("new name");
        aHomePet.setAddress("New Address");
        aHomePet.setOwner("new owner");
        System.out.println(aHomePet.toString());*/

        final Vertebrate[] animals = {new Vertebrate(VertClass.MAMMAL, "Human", VertGender.FEMALE, firstVert,
                                                     -23.30, thirdVert, "language"), 
                                      new HomePet(VertClass.MAMMAL, "Dog", VertGender.FEMALE, firstHP, secHP, thirdHP,
                                                                 "woof-woof", "Raven", "some address", "Monika"), 
                                      new HomePet()};

        for (Vertebrate each: animals) {
            System.out.println(each.toString());
        }
    }

}
