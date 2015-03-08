package midterm.progpracticum;

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
    public HomePet(final VertClass aClass, final String aSpecies, final VertGender aGender, final double aAge, final double aHeight, final double aWeight,
                   final String aCall, final String aName, final String anAddress, final String anOwner) {
        super(aClass, aSpecies, aGender, aAge,
              aHeight, aWeight, aCall);

        myName = aName;
        myAddress = anAddress;
        myOwner = anOwner;
    }

    /**
     * @return myName
     */
    public String getMyName() {
        return myName;
    }
    /**
     * @param aName sets name
     */
    public void setMyName(String aName) {
        myName = aName;
    }
    /**
     * @return myAddress
     */
    public String getMyAddress() {
        return myAddress;
    }
    /**
     * @param anAddress sets address
     */
    public void setMyAddress(String anAddress) {
        myAddress = anAddress;
    }
    /**
     * @return myOwner
     */
    public String getMyOwner() {
        return myOwner;
    }
    /**
     * @param anOwner sets owner
     */
    public void setMyOwner(String anOwner) {
        myOwner = anOwner;
    }
    @Override
    public String toString() {
        String supString = super.toString();
        supString = "\nName: " + myName + "\nAddress: " + myAddress + "\nOwner: " + myOwner + supString;
        return supString;
    }
}
