import java_cup.runtime.Symbol;

%%

%cup
%public
%class Lexer
%line
%column

ID = [id]
PLUS = [+]
MINUS = [-]
TIMES = [*]
DIVIDE = [/]
LPAREN = [(]
RPAREN = [)]

%%

<YYINITIAL> {

    "id"        {return new Symbol(Sym.ID);}
    "plus"      {return new Symbol(Sym.PLUS);}
    "minus"     {return new Symbol(Sym.MINUS);}
    "times"     {return new Symbol(Sym.TIMES);}
    "divide"    {return new Symbol(Sym.DIVIDE);}
    "lparen"    {return new Symbol(Sym.LPAREN);}
    "rparen"    {return new Symbol(Sym.RPAREN);}
}

<<EOF>> { return new Symbol( Sym.EOF ); }

[^] { throw new Error("Illegal character: "+yytext()+" at line "+(yyline+1)+", column "+(yycolumn+1) ); }