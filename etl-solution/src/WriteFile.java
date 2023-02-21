import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class WriteFile {
    public void writeContent(String content) throws IOException {

        File dest = new File("resource/output.txt");
        FileWriter writer = new FileWriter(dest);
        writer.write(content);
        writer.flush();
        System.out.println("File copied successfully.......");
    }
}
