/**
 * 
 */
package four.progpracticum;

/**
 * Represents a rectangle shape on a 2d plane.
 * @author Monika
 * @version Oct. 15, 2013
 * @cust.inv myLength >= 0, myWidth >= 0
 */
public class Rectangle {
    
    /**
     * A format string for decimal numbers.
     */
    private static final String FORMAT = "%.2f";
    /**
     * size of one of parallel sides.
     */
    private double myLength;
    /**
     * size of one of perpendicular sides.
     */
    private double myWidth;

    /**
     * Creates a rectangle object with sides equal 0.
     */
    public Rectangle() {
        myLength = 0;
        myWidth = 0;
    }
    
    /** Creates a rectangle object of given dimensions.
     * @param aLength > 0
     * @param aWidth > 0
     * @throws IllegalArgumentException
     */
    public Rectangle(final double aLength, final double aWidth) {
        if (aLength <= 0 || aWidth <= 0) {
            throw new IllegalArgumentException("Length and width must be positive");
        }
        myLength = aLength;
        myWidth = aWidth;
    }
    
    /**
     * Gives a size of one of parallel sides.
     * @return size of one of parallel sides
     */
    public double getLength() {
        return myLength;
    }
    
    /**
     * Gives a size of one of perpendicular sides.
     * @return size of one of perpendicular sides
     */
    public double getWidth() {
        return myWidth;
    }
    
    /**
     * Sets size of one of parallel sides.
     * @param aLength >= 0
     * @throws IllegalArgumentException
     */
    public void setLength(double aLength) {
        myLength = aLength;
        if (aLength <= 0) {
            throw new IllegalArgumentException("Length must be positive");
        }
    }
    
    /**
     * Sets size of one of perpendicular sides.
     * @param aWidth >= 0
     * @throws IllegalArgumentException
     */
    public void setWidth(double aWidth) {
        myWidth = aWidth;
        if (aWidth <= 0) {
            throw new IllegalArgumentException("Width must be positive.");
        }
    }
    
    /** Calculates rectangle area.
     * @return length x width
     */
    public double getArea() {
        return myLength * myWidth;
    }
    
    /** Calculates rectangle perimeter.
     * @return width + width + length + length
     */
    public double getPerimeter() {
        return 2 * (myLength + myWidth);
    }
    
    /** Resizes a rectangle.
     * @param aRatio denotes a resizing ratio
     * @custom.post if ratio > 0, sides shrunk or enlarged by that ratio
     *              all other ratio values result in an unchanged rectangle
     */
    public void resizeSides(double aRatio) {
        if (aRatio > 0.0) {
            myLength *= aRatio;
            myWidth *= aRatio;
        } else {
            throw new IllegalArgumentException("Ratio must be positive.");
        }
    }
    
    /** Flips the rectangle sides.
     * custom.post length becomes width and width becomes length
     */
    public void flipSides() {
        final double temp = myLength;
        myLength = myWidth;
        myWidth = temp;
        
    }
    
    /**
     * {@inheritDoc}
     * 
     * The String representation of Rectangle will be formatted as follows:
     * Rectangle (length, width).
     */

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(getClass().getCanonicalName());
        sb.append(" (");
        sb.append(String.format(FORMAT, myLength));
        sb.append(", ");
        sb.append(String.format(FORMAT, myWidth));
        sb.append(")");
        return sb.toString();    
    }
   
}