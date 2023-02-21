import java.io.*;
import java.util.Scanner;
import java.util.StringJoiner;

public class ReadFile{
    public String readFile(String filePath) throws IOException {
        StringJoiner readFileText = new StringJoiner("");
        File file1 = new File(filePath);
        FileReader fr = new FileReader(file1);
        BufferedReader br = new BufferedReader(fr);
        String line;
        while((line = br.readLine()) != null){
            readFileText.add(line);
        }
        return  readFileText.toString();
    }
}
