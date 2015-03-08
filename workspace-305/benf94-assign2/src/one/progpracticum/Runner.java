package one.progpracticum;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.StringTokenizer;

/**
 * @author benf94
 * @version 8.0
 */
public class Runner {

    /**
     * @param FILE_PATH sets file path for input file
     */
    private static final String FILE_PATH = "myresources/animalTesting.txt";
    /**
     * @param FILE_PATH_2 sets file path for output file
     */
    private static final String FILE_PATH_2 = "myresources/myReport.csv";
    /**
     * @param INPUT_FILE sets file for scanner
     */
    private static final File INPUT_FILE = new File(FILE_PATH);
    /**
     * @param OUTPUT_FILE sets file for writer
     */
    private static final File OUTPUT_FILE = new File(FILE_PATH_2);
    /**
     * @param VERT sets VERT to "V"
     */
    private static final String VERT = "V";
    /** 
     * @param HPET sets HPET to "H"
     */ 
    private static final String HPET = "H";
    
    /**
     * @param aRgs argument for main method
     * @throws IOException allows it to crash
     */
    public static void main(String[] aRgs) throws IOException {
        final ArrayList<Vertebrate> list = new ArrayList<Vertebrate>();
        final Scanner scanner = new Scanner(INPUT_FILE);
        final FileWriter fw = new FileWriter(OUTPUT_FILE);
        final BufferedWriter bw = new BufferedWriter(fw);
        final String firstLine = "Number,class,Species,Gender,Age,Height,Weight,Call,Name,Address,Owner\n";
        bw.write(firstLine);
        int i = 1;
        while (scanner.hasNextLine()) {
            final StringTokenizer tokenizer = new StringTokenizer(scanner.nextLine(), "\t");
            while (tokenizer.hasMoreElements()) {
                final String type = tokenizer.nextToken();
                if (type.equals(VERT)) {
                    final VertClass vclass = VertClass.valueOf(tokenizer.nextToken());
                    final String species = tokenizer.nextToken();
                    final VertGender gender = VertGender.valueOf(tokenizer.nextToken());
                    final double age = Double.parseDouble(tokenizer.nextToken());
                    final double height = Double.parseDouble(tokenizer.nextToken());
                    final double weight = Double.parseDouble(tokenizer.nextToken());
                    final String language = tokenizer.nextToken();
                    final String writeV = i + "," + vclass + "," + species  + "," + gender  + "," + age + "," + height + ","
                                            + weight + "," + language + ",,,\n";
                    i++;
                    final Vertebrate v = new Vertebrate(vclass, species, gender, age, height, weight, language);
                    list.add(v);
                    bw.write(writeV);
                    System.out.println(writeV);

                } else if (type.equals(HPET)) {
                    final VertClass vclass = VertClass.valueOf(tokenizer.nextToken());
                    final String species = tokenizer.nextToken();
                    final VertGender gender = VertGender.valueOf(tokenizer.nextToken());
                    final double age = Double.parseDouble(tokenizer.nextToken());
                    final double height = Double.parseDouble(tokenizer.nextToken());
                    final double weight = Double.parseDouble(tokenizer.nextToken());
                    final String language = tokenizer.nextToken();
                    final String name = tokenizer.nextToken();
                    final String address = tokenizer.nextToken();
                    final String owner = tokenizer.nextToken();
                    final String writeH = i + "," + vclass + "," + species + "," + gender + "," + age + "," + height + ","
                                            + weight + "," + language + "," + name + "," + address + "," + owner + "\n";
                    i++;
                    final HomePet h = new HomePet(vclass, species, gender, age, height, weight, language, name, address, owner);
                    list.add(h);
                    bw.write(writeH);
                    System.out.println(writeH);
                }
            }
        } scanner.close();
        for (Vertebrate vert : list) {
            System.out.println(vert.toString());
        }
        fw.close();
        bw.close();
    }
}
