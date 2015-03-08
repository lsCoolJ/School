package four.progpracticum;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.Before;
import org.junit.Test;

/**
 * Method and Constructor tests for the Rectangle class.
 * 
 * @author benf94
 * @version 22 Oct 2013
 */
public class RectangleTest {
    
    /**
     * The tolerance used when comparing double values for equality.
     */
    private static final double TOLERANCE = 0.001;
    
    /**
     * A Rectangle object to be used in the tests.
     */
    private Rectangle myRect;
    
    /**
     * A Rectangle object to be used in the constructor tests.
     */
    private Rectangle myActualRect;
    
    /**
     * A double to be used for actual values in tests.
     */
    private double myActualDouble;
    
    /**
     * A double to be used for expected values in tests.
     */
    private double myExpectedDouble;
    
    /**
     * A string to be used for actual strings in tests.
     */
    private String myActualString;
    
    /**
     * A string to be used for expected strings in tests.
     */
    private String myExpectedString;
    
    /**
     * Before method initializes Rectangle myRect for other test methods.
     */
    @Before
    public void before() {
        myRect = new Rectangle(13.0, 16.5);
    }
    
    /**
     * After class method lets the user know that all testing is done.
     */
    @AfterClass
    public static void afterClass() {
        System.out.println("All Testing Done.");
    }
    
    /**
     * Test method for {@link Rectangle#toString()}.
     */
    @Test
    public void testToString() {
        myActualString = myRect.toString();
        myExpectedString = "four.progpracticum.Rectangle (13.00, 16.50)";
        assertEquals(myExpectedString, myActualString);
    }
    
    /**
     * Test method for {@link Rectangle#Rectangle(Double, Double)}.
     */
    @Test
    public void testRectangle() {
        myActualRect = new Rectangle(12.00, 15.00);
        myActualString = myActualRect.toString();
        myExpectedString = "four.progpracticum.Rectangle (12.00, 15.00)";
        assertEquals(myExpectedString, myActualString);
    }
    
    /**
     * Test method for negative Length for {@link Rectangle#Rectangle(Double, Double)}.
     */
    @Test (expected = IllegalArgumentException.class)
    public void testRectangleExceptionLength() {
        myActualRect = new Rectangle(-12.00, 15.00);
    }
    
    /**
     * Test method for negative Width for {@link Rectangle#Rectangle(Double, Double)}.
     */
    @Test (expected = IllegalArgumentException.class)
    public void testRectangleExceptionWidth() {
        myActualRect = new Rectangle(12.00, -15.00);
    }
    
    /**
     * Test method for {@link Rectangle#Rectangle()}.
     */
    @Test
    public void testDefaultRectangle() {
        myActualRect = new Rectangle();
        myActualString = myActualRect.toString();
        myExpectedString = "four.progpracticum.Rectangle (0.00, 0.00)";
        assertEquals(myExpectedString, myActualString);
    }
    
    /**
     * Test method for {@link Rectangle#getLength()}.
     */
    @Test
    public void testGetLength() {
        myActualDouble = myRect.getLength();
        myExpectedDouble = 13.0;
        assertEquals(myExpectedDouble, myActualDouble, TOLERANCE);
    }
    
    /**
     * Test method for {@link Rectangle#getWidth()}.
     */
    @Test
    public void testGetWidth() {
        myActualDouble = myRect.getWidth();
        myExpectedDouble = 16.5;
        assertEquals(myExpectedDouble, myActualDouble, TOLERANCE);
    }
    
    /**
     * Test method for {@link Rectangle#setLength(double))}.
     */
    @Test
    public void testSetLength() {
        myRect.setLength(12.7);
        myActualDouble = myRect.getLength();
        myExpectedDouble = 12.7;
        assertEquals(myExpectedDouble, myActualDouble, TOLERANCE);
    }
    
    /**
     * Test method for negative Length for {@link Rectangle#setLength(double)).
     */
    @Test (expected = IllegalArgumentException.class)
    public void testSetLengthException() {
        myRect.setLength(-12.7);
    }
    
    /**
     * Test method for {@link Rectangle#setWidth(Double)}.
     */
    @Test
    public void testSetWidth() {
        myRect.setWidth(15.8);
        myActualDouble = myRect.getWidth();
        myExpectedDouble = 15.8;
        assertEquals(myExpectedDouble, myActualDouble, TOLERANCE);
    }
    
    /**
     * Test method for negative Width for {@link Rectangle#setWidth(double)}.
     */
    @Test (expected = IllegalArgumentException.class)
    public void testSetWidthException() {
        myRect.setWidth(-15.8);
    }
    
    /**
     * Test method for {@link Rectangle#getArea()}.
     */
    @Test
    public void testGetArea() {
        myActualDouble = myRect.getArea();
        myExpectedDouble = 214.5;
        assertEquals(myExpectedDouble, myActualDouble, TOLERANCE);
    }
    
    /**
     * Test method for {@link Rectangle#getPerimeter()}.
     */
    @Test
    public void testGetPerimeter() {
        myActualDouble = myRect.getPerimeter();
        myExpectedDouble = 59.0;
        assertEquals(myExpectedDouble, myActualDouble, TOLERANCE);
    }
    
    /**
     * Test method for {@link Rectangle#resizeSides(double)}.
     */
    @Test
    public void testResizeSize() {
        myRect.resizeSides(2.0);
        myActualString = myRect.toString();
        myExpectedString = "four.progpracticum.Rectangle (26.00, 33.00)";
        assertEquals(myExpectedString, myActualString);
    }
    
    /**
     * Test method for negative ratio for {@link Rectangle#resizeSides(double)}.
     */
    @Test (expected = IllegalArgumentException.class)
    public void testResizeSizeException() {
        myRect.resizeSides(-2.0);
    }
    
    /**
     * Test method for {@link Rectangle#flipSides()}.
     */
    @Test
    public void testFlipSides() {
        myRect.flipSides();
        myActualString = myRect.toString();
        myExpectedString = "four.progpracticum.Rectangle (16.50, 13.00)";
        assertEquals(myExpectedString, myActualString);
    }

}
