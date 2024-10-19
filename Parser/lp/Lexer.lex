import java_cup.runtime.Symbol;

class Sym {
  public static final int error = -1;
  public static final int EOF = 0;
  public static final int ID = 1;
  public static final int PLUS = 2;
  public static final int MINUS = 3;
  public static final int TIMES = 4;
  public static final int DIVIDE = 5;
  public static final int LPAREN = 6;
  public static final int RPAREN = 7;
}

%%

%cup
%debug

ID = "id"
PLUS = "+"
MINUS = "-"
TIMES = "*"
DIVIDE = "/"
LPAREN = "("
RPAREN = ")"

%%

{ID} { return new Symbol(Sym.ID, yytext());}
{PLUS} { return new Symbol(Sym.PLUS, yytext());}
{MINUS} { return new Symbol(Sym.MINUS, yytext());}
{TIMES} { return new Symbol(Sym.TIMES, yytext());}
{DIVIDE} { return new Symbol(Sym.DIVIDE, yytext());}
{LPAREN} { return new Symbol(Sym.LPAREN, yytext());}
{RPAREN} { return new Symbol(Sym.RPAREN, yytext());}