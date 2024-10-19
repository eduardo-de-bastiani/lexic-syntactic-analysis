import java.io.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        try {
            Yylex lexer = new Yylex(new InputStreamReader(System.in));
            parser p = new parser(lexer);
            Object result = p.parse().value;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}