package three.progpracticum;

import java.util.Objects;

/**
 * @author benf94
 * @version 1.0
 */
public class Person implements Comparable<Person> {

    /**
     * @param myFirstName
     */
    private final String myFirstName;
    /**
     * @param myLastName
     */
    private final String myLastName;
    /**
     * @param myStreetAddress
     */
    private final String myStreetAddress;
    /**
     * @param myCity
     */
    private final String myCity;
    /**
     * @param myState
     */
    private final String myState;
    /**
     * @param myZipCode
     */
    private final int myZipCode;
    /**
     * @param mySSN
     */
    private final int mySSN;
    /**
     * @param myPhoneNumber
     */
    private final long myPhoneNumber;

    /**
     * @param aFirstName first name
     * @param aLastName last name
     * @param aStreetAddress street address
     * @param aCity city
     * @param aState state
     * @param aZipCode zip code
     * @param aSSN social security number
     * @param aPhoneNumber phone number
     */
    public Person(final String aFirstName, final String aLastName,
            final String aStreetAddress, final String aCity,
            final String aState, final int aZipCode, final int aSSN,
            final long aPhoneNumber) {
        if (aFirstName == null) {
            throw new IllegalArgumentException("First name cannot be null");
        }
        if (aLastName == null) {
            throw new IllegalArgumentException("Last namecannot be null");
        }
        if (aStreetAddress == null) {
            throw new IllegalArgumentException("Address cannot be null");
        }
        if (aCity == null) {
            throw new IllegalArgumentException("City cannot be null");
        }
        if (aState == null) {
            throw new IllegalArgumentException("State cannot be null");
        }
        if (aZipCode == 0) {
            throw new IllegalArgumentException("Zip code cannot be 0");
        }
        if (aSSN == 0) {
            throw new IllegalArgumentException("SSN cannot be 0");
        }
        if (aPhoneNumber == 0) {
            throw new IllegalArgumentException("Phone number cannot be 0");
        }

        this.myFirstName = aFirstName;
        this.myLastName = aLastName;
        this.myStreetAddress = aStreetAddress;
        this.myCity = aCity;
        this.myState = aState;
        this.myZipCode = aZipCode;
        this.mySSN = aSSN;
        this.myPhoneNumber = aPhoneNumber;
    }

    /**
     * @param aPerson copy constructor
     */
    public Person(final Person aPerson) {
        this(aPerson.getFirstName(), aPerson.getLastName(),
                aPerson.getStreetAddress(), aPerson.getCity(),
                aPerson.getState(), aPerson.getZipCode(),
                aPerson.getSSN(), aPerson.getPhoneNumber());
    }

    @Override
    public boolean equals(Object anObj) {
        if (this == anObj) {
            return true; 
        }
        if (anObj == null) {
            return false;
        }
        if (getClass() != anObj.getClass()) {
            return false;
        }
        final Person other = (Person) anObj;
        if (mySSN != other.mySSN) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        return Objects.hash(mySSN);
    }

    @Override
    public int compareTo(final Person aPerson) {
        final int anSSN = aPerson.getSSN();
        final int zero = 0;
        if (anSSN == mySSN) {
            return 0;
        }
        if (anSSN > mySSN) {
            return 1;
        }
        if (anSSN < mySSN) {
            return -1;
        }
        return zero;
    }

    /**
     * @return myFirstName
     */
    public String getFirstName() {
        return myFirstName;
    }

    /**
     * @return myLastName
     */
    public String getLastName() {
        return myLastName;
    }

    /**
     * @return myStreetAddress
     */
    public String getStreetAddress() {
        return myStreetAddress;
    }

    /**
     * @return myCity
     */
    public String getCity() {
        return myCity;
    }

    /**
     * @return myState
     */
    public String getState() {
        return myState;
    }

    /**
     * @return myZipCode
     */
    public int getZipCode() {
        return myZipCode;
    }

    /**
     * @return mySSN
     */
    public int getSSN() {
        return mySSN;
    }

    /**
     * @return myPhoneNumber
     */
    public long getPhoneNumber() {
        return myPhoneNumber;
    }

}
