package midterm.progpracticum;

/** HomePet extends Vertebrate and continues its construction.
 * @author benf94
 * @version 10/23/2013
 */
public class HomePet extends Vertebrate {

    /**
     * myName is the name of the HomePet.
     */
    private String myName;
    /**
     * myAddress is the address of the HomePet.
     */
    private String myAddress;
    /**
     * myOwner is the owner of the HomePet.
     */
    private String myOwner;

    /**
     * Default constructor.
     */
    public HomePet() {
        myName = "none";
        myAddress = "none";
        myOwner = "none";
    } 

    /**
     * Constructor takes following parameters.
     * @param aClass sets class
     * @param aSpecies sets species
     * @param aGender sets gender
     * @param aAge sets age
     * @param aHeight sets height
     * @param aWeight sets weight
     * @param aCall sets call
     * @param aName sets name
     * @param anAddress sets address
     * @param anOwner sets owner
     */
    public HomePet(final VertClass aClass, final String aSpecies,
                   final VertGender aGender, final double aAge,
                   final double aHeight, final double aWeight,
                   final String aCall, final String aName, 
                   final String anAddress, final String anOwner) {
        super(aClass, aSpecies, aGender, aAge,
              aHeight, aWeight, aCall);

        myName = aName;
        myAddress = anAddress;
        myOwner = anOwner;
    }

    /**
     * @return Name of pet
     */
    public String getMyName() {
        return myName;
    }
    /**
     * @param aName sets name of pet
     */
    public void setMyName(String aName) {
        myName = aName;
    }
    /**
     * @return Address of pet
     */
    public String getMyAddress() {
        return myAddress;
    }
    /**
     * @param anAddress sets address of pet
     */
    public void setMyAddress(String anAddress) {
        myAddress = anAddress;
    }
    /**
     * @return Owner of pet
     */
    public String getMyOwner() {
        return myOwner;
    }
    /**
     * @param anOwner sets owner of pet
     */
    public void setMyOwner(String anOwner) {
        myOwner = anOwner;
    }
    @Override
    public String toString() {
        String supString = super.toString();
        supString = "\nName: " + myName + "\nAddress: "
                + myAddress + "\nOwner: " + myOwner + supString;
        return supString;
    }
}
