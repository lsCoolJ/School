package three.interfacedemo;

import java.util.Arrays;

public class Cuboid extends Rectangle implements IShape3D{
	
	double myHeight;
	
	public Cuboid(double aLenght, double aWidth, double aHeight) {
		super(aLength, aWidth);
		myHeight = aHeight;
		
	}

	@Override
	public double getVolume() {
		// TODO Auto-generated method stub
		return super.getArea() * myHeight;
	}
	
	public int compareTo(Rectangle other) {
		if (getClass() != other.getClass())
			throw new ClassCastException("works on cuboids only");
		Cuboid another = (Cuboid) other;
		if (Math.abs(getVolume() - another.getVolume()) < 0.000000001)
			return 0;
		else if (getVolume() < another.getVolume())
			return -1;
		else
			return 1;
	}

}
