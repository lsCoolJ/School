package three.progpracticum;

import java.math.BigDecimal;

/**
 * @author benf94
 * @version 1.0
 */
public class Tester {

    /**
     * @param twoHunny is 200
     */
    private static final double TWO_HUNNY = 200;
    /**
     * @param oneFitty is 150
     */
    private static final double ONE_FITTY = 150;
    /**
     * @param treeHunny is 300
     */
    private static final double TREE_HUNNY = 300;
    /**
     * @param fourHunny is 400
     */
    private static final double FOUR_HUNNY = 400;
    /**
     * @param ZIP_CODE is zip code
     */
    private static final int ZIP_CODE = 98388;
    /**
     * @param SSN_1 is ssn
     */
    private static final int SSN_1 = 123456789;
    /**
     * @param PHONE_NUMBER is phone number
     */
    private static final long PHONE_NUMBER = 3534221;
    /**
     * @param myBalance is my balance
     */
    private static BigDecimal myBalance = new BigDecimal(TWO_HUNNY);
    /**
     * @param deposit1 is first deposit
     */
    private static BigDecimal deposit1 = new BigDecimal(TREE_HUNNY);
    /**
     * @param withdrawl1 is first withdrawl
     */
    private static BigDecimal withdrawl1 = new BigDecimal(ONE_FITTY);
    /**
     * @param withdrawl2 is second withdrawl
     */
    private static BigDecimal withdrawl2 = new BigDecimal(FOUR_HUNNY);
    /**
     * @param LINE is line separator
     */
    private final static String LINE = "---------------------";

    /**
     * @param anArgs is args
     */
    public static void main(String[] anArgs) {
        final Person person1 = new Person("Ben", "Foster", "2721 Natalie Lane",
                "Steilacoom", "WA", ZIP_CODE, SSN_1, PHONE_NUMBER);
        final Person person2 = new Person(person1);

        //Person Class Testers
        System.out.println("Person Class testers: \n" + LINE);
        System.out.println("Person Tester: \nName: " + person1.getFirstName()
                + " " + person1.getLastName() + "\n" + "Address: " + person1.getStreetAddress()
                + "\n" + person1.getCity() + " " + person1.getState() + ", "
                + person1.getZipCode()
                + "\n" + "Social Security Number: " + person1.getSSN() + "\n"
                + "Phone Number: " + person1.getPhoneNumber());
        System.out.println("HashCode tester: \n" 
                + "Person 1: " + person1.hashCode() + "\n" 
                + "Person 2: " + person2.hashCode());

        System.out.println("Equals tester: \n" 
                + "Person 1 = Person2: " + person1.equals(person2));

        System.out.println("Compare to: \n"
                + "Person1 compared to Person2: " + person1.compareTo(person2) + "\n" + LINE);

        //SavingsAccount Class Testers
        System.out.println("SavingsAccount Class testers: \n" + LINE);
        final SavingsAccount sav1 = new SavingsAccount(person1, myBalance);
        final SavingsAccount sav2 = new SavingsAccount(sav1);
        System.out.println("Account info test:\n" + "savings account 1: "
                + sav1.getAccountInfo());
        System.out.println("Equals tester:\n"
                + "SavingsAccount 1 = SavingsAccount 2: " + sav1.equals(sav2));
        System.out.println("Compare To tester:\n" 
                + "Savings1 compared to Savings2: " + sav1.compareTo(sav2));
        sav1.makeDeposit(deposit1);
        System.out.println("Account deposit test:\n" + sav1.getAccountInfo());
        sav1.makeWithdrawl(withdrawl1);
        System.out.println("Account withdrawl test:\n" + sav1.getAccountInfo() + "\n" + LINE);

        //CheckingAccount Class Testers
        System.out.println("CheckingAccount Class testers: \n" + LINE);
        final CheckingAccount che1 = new CheckingAccount(person1, myBalance);
        final CheckingAccount che2 = new CheckingAccount(che1);
        System.out.println(che1.getAccountInfo() + " " + che2.getAccountInfo());
        System.out.println("Account info test:\n" + "checking account 1: "
                + che1.getAccountInfo());
        System.out.println("Equals tester:\n"
                + "CheckingAccount 1 = CheckingAccount 2: " + che1.equals(che2));
        System.out.println("Compare To tester:\n" 
                + "Checking1 compared to Checking2: " + che1.compareTo(che2));
        che1.makeDeposit(deposit1);
        System.out.println("Account deposit test:\n" + che1.getAccountInfo());
        che1.makeWithdrawl(withdrawl2);
        System.out.println("Account withdrawl test:\n" + che1.getAccountInfo());
    }
}
