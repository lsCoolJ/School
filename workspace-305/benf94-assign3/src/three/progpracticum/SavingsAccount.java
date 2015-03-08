package three.progpracticum;

import java.math.BigDecimal;

/**
 * @author benf94
 * @version 1.0
 */
public class SavingsAccount extends BankAccount {

    /**
     * @param mySAV is the string SAV
     */
    private String mySAV = "SAV";
    /**
     * @param myInterestNumber is 0.0215
     */
    private final double myInterestNumber = 0.0215;
    /**
     * @param interest is the interest
     */
    private BigDecimal myInterest = new BigDecimal(myInterestNumber);
    /**
     * @param counter is the counter
     */
    private static long myCounter = 0;

    /**
     * @param anOwner owner
     * @param aBalance balance
     */
    public SavingsAccount(final Person anOwner, final BigDecimal aBalance) {
        super(anOwner, aBalance);
        myCounter++;
        addInterest();
        myNumber = mySAV + String.format("%09d", myCounter);
    }

    /**
     * @param aCopy copy
     */
    public SavingsAccount(final SavingsAccount aCopy) {
        super(aCopy.getOwner(), aCopy.getBalance());
        myNumber = aCopy.getNumber();
    }

    /**
     * @clone clone method
     * @throws ClonedNotSupportedException
     * @return cloned
     */
    public SavingsAccount clone() throws CloneNotSupportedException {
        final SavingsAccount cloned = (SavingsAccount) super.clone();
        return cloned;
    }

    /**
     * @method adds Interest
     */
    public void addInterest() {
        if (myBalance.multiply(myInterest).doubleValue() >= 0) {
            myBalance = myBalance.add(myBalance.multiply(myInterest));
        }
    }

    @Override
    public void makeDeposit(BigDecimal aDeposit) {
        if (aDeposit.doubleValue() < 0.0) {
            throw new IllegalArgumentException("Deposit cannot be negative");
        }
        myBalance = myBalance.add(aDeposit);
    }

    @Override
    public void makeWithdrawl(BigDecimal aWithdrawl) {
        if (aWithdrawl.doubleValue() < 0.0) {
            throw new IllegalArgumentException("Withdrawl cannot be negative");
        }
        myBalance = myBalance.subtract(aWithdrawl);
        if (myBalance.doubleValue() < 0) {
            System.out.println("Withdrawl made Savings Account "
                    + myNumber + " negative. Balance: "
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
        final SavingsAccount other = (SavingsAccount) anObj;
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
