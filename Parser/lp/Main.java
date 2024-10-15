import java.io.FileReader;
import java.nio.file.Paths;

public class Main {

    public static void main(String[] args) {

        // String rootPath = Paths.get("").toAbsolutePath().toString();
        // String subPath = "/src/";

        String sourcecode = /*rootPath + subPath +*/ "testes.txt";

        try {
            Parser p = new Parser(new Lexer(new FileReader(sourcecode)));
            Object result = p.parse().value;

            System.out.println("Compilacao concluida com sucesso...");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}

//java -jar java-cup-11b.jar -parser Parser -symbols Sym -destdir ./ Parser.cup
//javac -cp "java-cup-11b-runtime.jar" *.java