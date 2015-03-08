package midterm.progpracticum;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.StringTokenizer;

public class Visit {

    private static String visitDate = null;
    private static int myID;
    private static int myProcedureID;
    
    public Visit(final String anID, final String aProcedureID) {
        myID = Integer.parseInt(anID);
        myProcedureID = Integer.parseInt(aProcedureID);
        
        
    }
    
    public int getMyID() {
        return myID;
    }
    
    public int getMyProcedureID() {
        return myProcedureID;
    }
}