package seven.progpracticum;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.geom.GeneralPath;

/** This class creats an object that has a path, stroke size, and color.
 * @author benf94
 * @version 11/20/2013
 */
public class MyPathObject {

    /**
     * The general path of the object.
     */
    private GeneralPath myPath;
    
    /**
     * The stroke size of the object.
     */
    private BasicStroke myStroke;
    
    /**
     * The color of the object.
     */
    private Color myColor;
    
    /**
     * 
     */
    public MyPathObject() {
        myPath = null;
        myStroke = null;
        myColor = null;
    }

    /**
     * @param aPath is the general path being passed into the MyPathObject.
     * @param aStroke is the stroke being passed into the MyPathObject.
     * @param aColor is the color being passed into the MyPathObject.
     */
    public MyPathObject(final GeneralPath aPath, final BasicStroke aStroke,
                        final Color aColor) {
        myPath = aPath;
        myStroke = aStroke;
        myColor = aColor;
    }

    /**
     * @param aPathObject is the path object to be copied.
     */
    public MyPathObject(final MyPathObject aPathObject) {
        myPath = aPathObject.getMyPath();
        myStroke = aPathObject.getMyStroke();
        myColor = aPathObject.getMyColor();
    }

    /**
     * @return MyPath.
     */
    public GeneralPath getMyPath() {
        return myPath;
    }

    /**
     * @param aPath is the path that you set myPath equal to.
     */
    public void setMyPath(GeneralPath aPath) {
        myPath = aPath;
    }
    
    /**
     * @return myStroke.
     */
    public BasicStroke getMyStroke() {
        return myStroke;
    }

    /**
     * @param aStroke is the stroke that you set myStroke equal to.
     */
    public void setMyStroke(BasicStroke aStroke) {
        myStroke = aStroke;
    }

    /**
     * @return myColor.
     */
    public Color getMyColor() {
        return myColor;
    }

    /**
     * @param aColor is the color that you set myColor equal to.
     */
    public void setMyColor(Color aColor) {
        myColor = aColor;
    }


}
