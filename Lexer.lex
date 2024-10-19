import java_cup.runtime.Symbol;

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

{ID} { return new Symbol(Sym.ID); }
{PLUS} { return new Symbol(Sym.PLUS); }
{MINUS} { return new Symbol(Sym.MINUS); }
{TIMES} { return new Symbol(Sym.TIMES); }
{DIVIDE} { return new Symbol(Sym.DIVIDE); }
{LPAREN} { return new Symbol(Sym.LPAREN); }
{RPAREN} { return new Symbol(Sym.RPAREN); }
".|\n" { return new Symbol(Sym.EOF, yyline, yycolumn, yytext()); }