package inheritance;

import java.util.ArrayList;

public class ManagerTest {

	public static void main(String[] args) {
		//construct a Manager object
		Manager boss = new Manager("Carl Cracker", 80000, 1987, 12, 15);
		boss.setBonus(5000);
		
		ArrayList<Employee> staff = new ArrayList<>();
		
		//Employee[] staff = new Employee[3];
		
		//fill the staff array with Manager and Employee objects
		staff.add(boss);
		staff.add(new Employee("Harry Hacker", 50000, 1989, 10, 1));
		staff.add(new Employee("Tommy Tester", 40000, 1990, 3, 15));
		
		//print out information about all Employee objects
		for (Employee e : staff)
			System.out.println("Name: " + e.getName() + ", salary: " + e.getSalary()
					+ ", Date of Hire: " + e.getHireDay());
	}
}
