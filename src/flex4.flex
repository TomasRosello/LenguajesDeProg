mport java.io.*;
import java_cup.runtime.*;

%%
%class P4
%unicode
%standalone
%line
%char
%column
%cup

%{
%}

%%

"leer" {return new Symbol (sym.LEER, yyline, yycolum, yytext());}

"mostrar" {return new Symbol (sym.MOSTRAR, yyline, yycolum, yytext());}

[A-Za-z] {return new Symbol (sym.VARIABLE, yyline, yycolum, yytext());}

[0-9]	{return new Symbol (sym.NUMERO, yyline, yycolum, new integer (yytext()));}

"<‐" {return new Symbol (sym.ASIGNACION, yyline, yycolum, yytext());}
	 
";" {return new Symbol (sym.PUNTO_COMA, yyline, yycolum, yytext()));}

"-" {return new Symbol (sym.RESTA, yyline, yycolum, yytext());}
	
"*" {return new Symbol (sym.MULT, yyline, yycolum, yytext());}

"+" {return new Symbol (sym.SUMA, yyline, yycolum, yytext());}

"/" {return new Symbol (sym.DIV, yyline, yycolum, yytext());}

. { }