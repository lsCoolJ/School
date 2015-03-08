package midterm.progpracticum;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

/**
 * @author benf94
 * @version 11/1/2013
 */
public class VertebrateTest {
    
    private static final double TOLERANCE = 0.0001;
    private Vertebrate myVertebrate;
    private Vertebrate mySecondVert = new Vertebrate(VertClass.MAMMAL,
                                                     "dog", VertGender.MALE,
                                                     2.5, 10.2, 3.7, "woof");

    @Before
    public void setUp() {
        myVertebrate = new Vertebrate();
    }
    
    @Test
    public void testVertClass() {
        assertEquals("Param constructor failed on Class.",
                     VertClass.MAMMAL, mySecondVert.getMyClass());
    }
    
    @Test
    public void testVertSpecies() {
        assertEquals("Param constructor failed on Species.",
                     "dog", mySecondVert.getMySpecies());
    }
    
    @Test
    public void testVertGender() {
        assertEquals("Param constructor failed on Gender.",
                     VertGender.MALE, mySecondVert.getMyGender());
    }
    
    @Test
    public void testVertAge() {
        assertEquals("Param constructor failed on Age.", 2.5,
                     mySecondVert.getMyAge(), TOLERANCE);
    }
    
    @Test
    public void testVertHeight() {
        assertEquals("Param constructor failed on Height.", 10.2,
                     mySecondVert.getMyHeight(), TOLERANCE);
    }
    
    @Test
    public void testVertWeight() {
        assertEquals("Param constructor failed on Weight.", 3.7,
                     mySecondVert.getMyWeight(), TOLERANCE);
    }
    
    @Test
    public void testVertCall() {
        assertEquals("Param constructor failed on Call.", "woof",
                     mySecondVert.getMyCall());
    }
    
    @Test
    public void testSetClass() {
        myVertebrate.setMyClass(VertClass.BIRD);
        assertEquals("setMyClass failed!", VertClass.BIRD,
                     myVertebrate.getMyClass());
    }
    
    @Test
    public void testSetSpecies() {
        myVertebrate.setMySpecies("cat");
        assertEquals("SetMySpecies failed!", "cat",
                     myVertebrate.getMySpecies());
    }
    
    @Test
    public void testSetGender() {
        myVertebrate.setMyGender(VertGender.FEMALE);
        assertEquals("SetMyGender failed!", VertGender.FEMALE,
                     myVertebrate.getMyGender());
    }
    
    @Test
    public void testSetAge() {
        myVertebrate.setMyAge(23.0);
        assertEquals("SetMyAge failed!", 23.0,
                     myVertebrate.getMyAge(), TOLERANCE);
    }
    
    @Test
    public void testSetHeight() {
        myVertebrate.setMyHeight(8.0);
        assertEquals("setMyHeight failed!", 8.0,
                     myVertebrate.getMyHeight(), TOLERANCE);
    }
    
    @Test
    public void testSetWeight() {
        myVertebrate.setMyWeight(4.6);
        assertEquals("setMyWeight failed!", 4.6,
                     myVertebrate.getMyWeight(), TOLERANCE);
    }
    
    @Test
    public void testSetCall() {
        myVertebrate.setMyCall("meow");
        assertEquals("setMyCall failed!", "meow",
                     myVertebrate.getMyCall());
    }
    
    @Test
    public void testToString() {
        assertEquals("toString() method returns an incorrect result.",
                     "\nClass: MAMMAL\nSpecies: dog\nGender: MALE\n"
                     + "Age: 2.5\nHeight: 10.2\nWeight: 3.7\nCall: woof"
                     + "\n------\n", mySecondVert.toString());
    }

}
