import java.io.*;

public class Main {

    public static final String USERS_RKT_8318_DESKTOP_INPUTFILE_TXT = "/Users/rkt8318/Desktop/inputfile.txt";

    public static void main(String[] args) throws IOException {
        //Read file
        String src = USERS_RKT_8318_DESKTOP_INPUTFILE_TXT;
        ReadFile rf = new ReadFile();
        String fileText = rf.readFile(src);
        //
        String fileContent;

        Transform tr=new Transform();
        fileContent = tr.capitalizeLineLetter(fileText);
        //Write transformed content to file
        WriteFile wr = new WriteFile();
        wr.writeContent(fileContent);

    }

    }