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


    {id}        {return new Symbol(Sym.ID, yytext());}
    {plus}      {return new Symbol(Sym.PLUS, yytext());}
    {minus}     {return new Symbol(Sym.MINUS, yytext());}
    {times}     {return new Symbol(Sym.TIMES, yytext());}
    {divide}    {return new Symbol(Sym.DIVIDE), yytext();}
    {lparen}    {return new Symbol(Sym.LPAREN, yytext());}
    {rparen}    {return new Symbol(Sym.RPAREN, yytext());}