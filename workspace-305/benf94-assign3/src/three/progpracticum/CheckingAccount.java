package three.progpracticum;

import java.math.BigDecimal;

/**
 * @author benf94
 * @version 1.0
 */
public class CheckingAccount extends BankAccount {

    /**
     * @param myCHE is CHE
     */
    private String myCHE = "CHE";
    /**
     * @param myMinDepoNumber is number 200
     */
    private final double myMinDepoNumber = 200;
    /**
     * @param myMinDepo is min deposit
     */
    private BigDecimal myMinDepo = new BigDecimal(myMinDepoNumber);
    /**
     * @param myPenalty is penalty
     */
    private BigDecimal myPenalty = BigDecimal.TEN;
    /**
     * @param myCounter is counter
     */
    private static long myCounter = 0;

    /**
     * @param anOwner owner
     * @param aBalance balance
     */
    public CheckingAccount(final Person anOwner, final BigDecimal aBalance) {
        super(anOwner, aBalance);
        myCounter++;
        myNumber = myCHE + String.format("%09d", myCounter);
    }

    /**
     * @param aCopy copy
     */
    public CheckingAccount(final CheckingAccount aCopy) {
        super(aCopy.getOwner(), aCopy.getBalance());
        myNumber = aCopy.getNumber();
    }

    @Override
    public CheckingAccount clone() throws CloneNotSupportedException {
        final CheckingAccount cloned = (CheckingAccount) super.clone();
        return cloned;
    }

    /**
     * @method addPenalty adds penalty
     */
    public void addPenalty() {
        myBalance = myBalance.subtract(myPenalty);
    }

    @Override
    public void makeDeposit(final BigDecimal aDeposit) {
        if (aDeposit.doubleValue() < 0.0) {
            throw new IllegalArgumentException("Deposit cannot be negative");
        }
        myBalance = myBalance.add(aDeposit);
    }

    @Override
    public void makeWithdrawl(final BigDecimal aWithdrawl) {
        if (aWithdrawl.doubleValue() < 0.0) {
            throw new IllegalArgumentException("Withdrawl cannot be negative");
        }
        myBalance = myBalance.subtract(aWithdrawl);
        if (myBalance.doubleValue() < 0) {
            addPenalty();
            System.out.println("Withdrawl made Checking Account " + myNumber
                    + " negative. Penalty added. Balance at time of penalty: "
                    + myBalance.doubleValue());
        }
    }

    @Override
    public final String getAccountInfo() {
        final String accountInfo = "Account Owner: " + getOwner().getFirstName() + " "
                + getOwner().getLastName() + "\nNumber: " + myNumber
                + "\nBalance: " + getBalance().setScale(2, BigDecimal.ROUND_HALF_EVEN);
        return accountInfo;
    }

    @Override
    public final boolean equals(Object anObj) {
        if (this == anObj) {
            return true;
        }
        if (anObj == null) {
            return false;
        }
        if (getClass() != anObj.getClass()) {
            return false;
        }
        final CheckingAccount other = (CheckingAccount) anObj;
        if (myNumber == null) {
            if (other.myNumber != null) {
                return false;
            }
        } else if (!myNumber.equals(other.myNumber)) {
            return false;
        }
        return true;
    }

    @Override
    public int compareTo(BankAccount anAccount) {
        if (this.getBalance().doubleValue() < anAccount.getBalance().doubleValue()) {
            return -1;
        }
        if (this.getBalance().doubleValue() > anAccount.getBalance().doubleValue()) {
            return 1;
        }
        return 0;
    }

}
