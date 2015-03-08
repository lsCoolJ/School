package three.interfacedemo;

public class Rectangle implements IShape {
	private double myLength;
	private double myWidth;
	  
	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		return myLength * myWidth;
	}
	@Override
	public double getPerimeter() {
		// TODO Auto-generated method stub
		return (myLength * 2) + (myWidth * 2);
	}
	

}
