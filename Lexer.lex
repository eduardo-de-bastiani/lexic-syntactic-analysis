import java_cup.runtime.Symbol;

%%
%cup
%class Lexer
%debug

Digito = [0-9]+

%%

[\t\r\n ]+ {}
{Digito} { return new Symbol(Sym.ID, Integer.parseInt(yytext())); }
"(" { return new Symbol(Sym.LPAREN); }
")" { return new Symbol(Sym.RPAREN); }
"+" { return new Symbol(Sym.PLUS); }
"-" { return new Symbol(Sym.MINUS); }
"*" { return new Symbol(Sym.TIMES); }
"/" { return new Symbol(Sym.DIVIDE); }
<<EOF>> { return new Symbol(Sym.EOF); }