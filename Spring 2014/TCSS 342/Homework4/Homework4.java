/**
 * Homework 4 Homework4 class written by Ben Foster
 * TCSS 342 5/20/14
 */
import java.util.HashMap;
import java.util.Random;
import java.io.File;
import java.io.IOException;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.awt.Point;

//Homework4 class is the testing class for MyHashMap.
//it contains all methods and code used for testing.
public class Homework4 {

    //main method contains different methods in it that
    //each test different things for the hash map.
    //you uncomment different parts in order to run
    //every test.
    public static void main(String[] args) {
        //comment out everything but normalTest() in order to
        //do the normal test.
        //
        //just a normal test to determine if MyHashMap was working.
        /*
        normalTest();
        */

        //comment out everything but mayerTest() in order to
        //do the mayer test.
        //
        //the given test that was found on moodle.
        /*
        mayerTest();
        */

        //comment out everything except for whats in the loop to do
        //the tests that were used for answering the three questions
        //in the homework.
        //
        //when using this testing method, you have to comment/uncomment
        //a few lines and change the name of the output file each time you
        //comment/uncomment one of the hashmaps being tested.
        for(int N = 1; N < 10000000; N = N*10) {
            test(N);
        }
    }

    //normalTest() method is used for testing whether the map was working
    //correctly. different put statements were commented out in order to see
    //if the rehashing worked correctly.
    private static void normalTest(){
        MyHashMap<String, Integer> myMap = new MyHashMap<String, Integer>(5);
        myMap.put("A", 0);
        myMap.put("B", 1);
        myMap.put("C", 2);
        myMap.put("D", 3);
        myMap.put("E", 4);
        myMap.put("F", 5);
        myMap.put("G", 6);

        System.out.println(myMap.get("D"));
    }

    //mayerTest() method contains the compatibility test code given to us
    //on moodle and runs the test code written by instructor John Mayer.
    private static void mayerTest(){
        // first hash map is  String -> Integer
        MyHashMap<String,Integer> map = new MyHashMap<String,Integer>();
        map.put("Smith", 25);
        map.put("Jones", 100);
        System.out.println(map.get("Smith")+map.get("Jones"));

        // second hash map is Student -> Point
        Student stu1 = new Student("Barbara", "Walters");
        Student stu2 = new Student("Brian", "Williams");
        MyHashMap<Student,Point> map2 = new MyHashMap<Student,Point>();
        map2.put(stu1, new Point(84,84));
        map2.put(stu2, new Point(55,55));
        System.out.println(map2.get(stu1));
        System.out.println(map2.get(stu2));

        // as indicated in the instructions, your hash map will need
        // a constructor that accepts an integer ...
        MyHashMap<String,String> map3 = new MyHashMap<String,String>(10);
        map3.put("Good","Bye");
        map3.put("So","Long");
        System.out.println(map3.get("Good")+map3.get("So"));

        /*
        Correct output for this test method is:

        125
        java.awt.Point[x=84,y=84]
        java.awt.Point[x=55,y=55]
        ByeLong

        */
    }

    //test() method tests MyHashMap and the java HashMap in two ways:
    //the first way they are tested is by using the generic size with a
    //no arg constructor to test how fast it is at rehashing.
    //the second way they are tested is by placing the number n in the
    //constructor which makes it so that the hashmaps do not have to rehash.
    //
    //What happens is one of the first four lines remains uncommented out and
    //is tested. The time that it takes to complete the hashing and the number n
    //are written to a csv file where they are then graphed using a log-log plot
    //to determine if they are O(1).
    private static void test(int n) {
        MyHashMap<Integer, Integer> myMap = new MyHashMap<Integer, Integer>();
        //HashMap<Integer, Integer> myMap = new HashMap<Integer, Integer>();
        //MyHashMap<Integer, Integer> myMap = new MyHashMap<Integer, Integer>(n);
        //HashMap<Integer, Integer> myMap = new HashMap<Integer, Integer>(n);

        Random random = new Random();
        double timeConvert = 0.000000001;
        long begin = System.nanoTime();
        for(int i = 0; i < n; i++) {
            myMap.put(random.nextInt((int) 1.5*n), random.nextInt((int) 1.5*n));
        }
        for(int i = 0; i < 10*n; i++) {
            //comment either of the next two lines out.
            //commenting out the first line will get slower results.
            //commenting out the second line will get faster results.
            //myMap.get(random.nextInt((int) 1.5*n));
            System.out.println(myMap.get(random.nextInt((int) 1.5*n)));
        }
        long end = System.nanoTime();
        long total = end - begin;

        writeFile(n, total*timeConvert);

        System.out.println("total time: " + total*timeConvert);
    }

    //writeFile() method is a helper method to test() and writes the number
    //n used in testing and the total time each hashing takes to a csv file
    //which is then used to make a graph.
    private static void writeFile(int n, double total) {
        try {
            //the name of the output file is changed so that
            //all four tests can be done at once.
            File file = new File("csvoutput.csv");
            FileWriter fw = new FileWriter(file, true);
            BufferedWriter output = new BufferedWriter(fw);
            output.write(n + "," + total);
            output.write("\n");
            output.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

//Student class is only used in mayerTest() method and
//is otherwise unused.
class Student {

    private String firstName;
    private String lastName;

    Student(String first, String last) {
        firstName = first;
        lastName = last;
    }

    public int hashCode() {
        return (firstName+lastName).hashCode();
    }

    // author = 342 Student Brandon Soto
    public boolean equals(Object obj) {
        if (obj != null && getClass().equals(obj.getClass())) {
            Student other = (Student) obj;
            return firstName.equals(other.firstName)
                    && lastName.equals(other.lastName);
        }
        return false;
    }
}