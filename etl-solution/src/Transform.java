import java.util.StringJoiner;

public class Transform {


    public String capitalizeLetter(String word)
    {
        if (word == null || word.length() == 0) return word;
        return word.substring(0, 1).toUpperCase() + word.substring(1);
    }
    public String capitalizeLineLetter(String line)
    {
        StringJoiner stringJoiner =new StringJoiner(" ");
        String[] words = line.split(" ");
        for (String word:words) {
            stringJoiner.add(capitalizeLetter(word));
        }
        return stringJoiner.toString();

    }
}
