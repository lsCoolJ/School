  package setdemo.progpracticum;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;


/**
 * Driver class to experiment with Set data type.
 * @author Monika
 * @version 1.0
 */
public final class Driver {
 
    /**
     * Driver constructor.
     */
    private Driver() {
    }

    /**
     * main method for testing the Set interface.
     * @param aRgs command-line arguments
     * @throws IOException 
     */
    public static void main(String[] aRgs) throws IOException {
               
        String word;
        // add code to declare two set instances: declarSet and gettysSet
        Set<String> declarSet = new HashSet<String>();
        Set<String> gettysSet = new HashSet<String>();
        
        Scanner in = new Scanner(Paths.get("myresources/declaration.txt"));
        // add code to read from the file into declarSet          
        while (in.hasNext()) {
            word = in.next();
            word = word.replaceAll("\\W", "").toLowerCase();
            if (word.length() > 0)
                declarSet.add(word);
        }
        in.close();
        
        in = new Scanner(Paths.get("myresources/gettysburg.txt"));
        // add code to read from the file into gettysSet      
        while (in.hasNext()) {
            word = in.next();
            word = word.replaceAll("\\W", "").toLowerCase() ;
            if (word.length() > 0)
                gettysSet.add(word);
        }
        in.close();
        
        // checking declarSet contents
        System.out.println(declarSet);
        // checking gettysSet contents
        System.out.println(gettysSet);
        
        // construct sets that would contain unique words present in both files together
        // and unique words both sets have in common
        
        Set<String> union = new TreeSet<String>(declarSet);
        union.addAll(gettysSet);
        
        Set<String> intersection = new TreeSet<String>(declarSet);
        intersection.retainAll(gettysSet);
        
        
        PrintWriter out = new PrintWriter("myresources/myReport.txt");
        out.println("Count of unique words of length 2 or greater");
        // write a line that displays Gettysburg Address: followed by two tabs and the number 
        // of its unique words
        
        // write a line that displays Declaration of Independence: followed by one tab and 
        // the number of its unique words
       
        out.println("Operation\t\tResult");
        // write a line that displays a label and then the number of unique words existing in both
        // sets together
        
        // write a line that displays a label and then the number of unique words both sets
        // have in common
        
        out.println("Common words to both:");
        
        // write all the words both sets have in common
        
        
        out.close();
        
        // printing Done to console to indicate the program has finished processing        
        System.out.println("Done");
    }

}
