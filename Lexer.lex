%%

%class Lexer
%unicode
%cup

%{

  int num;
%}

DIGIT = [0-9]

%%

"+"           { return sym.PLUS; }
"-"           { return sym.MINUS; }
"*"           { return sym.TIMES; }
"/"           { return sym.DIVIDE; }
"("           { return sym.LPAREN; }
")"           { return sym.RPAREN; }
{DIGIT}+      { num = Integer.parseInt(yytext()); return sym.NUMBER; }
[ \t\n\r]+    { /* Ignorar espaços em branco */ }

.             { System.err.println("Caractere inválido: " + yytext()); }