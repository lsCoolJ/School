package three.progpracticum;

import java.math.BigDecimal;

/**
 * @author benf94
 * @version 1.0
 */
public abstract class BankAccount implements Cloneable, Comparable<BankAccount> {

    /**
     * @param owner
     */
    protected Person myOwner;
    /**
     * @param balance
     */
    protected BigDecimal myBalance;
    /**
     * @param number
     */
    protected String myNumber;

    /**
     * @param anOwner owner
     * @param aBalance balance
     */
    public BankAccount(final Person anOwner, final BigDecimal aBalance) {
        if (aBalance.doubleValue() < 0.0) {
            throw new IllegalArgumentException("Balance must be positive");
        }

        this.myOwner = anOwner;
        this.myBalance = aBalance;
        aBalance.setScale(2, BigDecimal.ROUND_HALF_EVEN);
    }

    /**
     * @param aDeposit deposit
     */
    public abstract void makeDeposit(BigDecimal aDeposit);

    /**
     * @param aWithdrawl withdrawl
     */
    public abstract void makeWithdrawl(BigDecimal aWithdrawl);

    /**
     * @return Account info
     */
    public abstract String getAccountInfo();

    /**
     * @clone clone method
     * @throws CloneNotSupportedException throws exception
     * @return cloned returns cloned Bank Account
     */
    public BankAccount clone() throws CloneNotSupportedException {
        final BankAccount cloned = (BankAccount) super.clone();
        return cloned;
    }

    /**
     * @return myOwner
     */
    public Person getOwner() {
        return myOwner;
    }

    /**
     * @param anOwner owner
     */
    public void setOwner(Person anOwner) {
        this.myOwner = anOwner;
    }

    /**
     * @return myBalance
     */
    public BigDecimal getBalance() {
        return myBalance;
    }

    /**
     * @return myNumber
     */
    public String getNumber() {
        return myNumber;
    }
}
