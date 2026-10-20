%%
%class AnalizadorLEA
%standalone
%unicode 

/*Macros*/

VALOR_SHAPE = square|circle|doublecircle|rectangle
VALOR_DIR = none|forward|back|both
VALOR_COLOR = blue|green|red|yellow
VALOR_STYLE = solid|dashed|bold
STRING = [a-zA-Z0-9_]+
STRING_ESPACIO = [a-zA-Z0-9_ ]+
INDICADOR_COMENTARIO_UNILINEA = "//"|"#"

%%

/*Palabras reservadas*/

"arbol" { System.out.println("TOKEN ARBOL => " + yytext()); }
"{" { System.out.println("TOKEN APERTURA_LLAVE => " + yytext()); }
"node" { System.out.println("TOKEN NODE => " + yytext()); }
"[" { System.out.println("TOKEN APERTURA_CORCHETE => " + yytext()); }
"shape" { System.out.println("TOKEN SHAPE_NODE => " + yytext()); }
"=" { System.out.println("TOKEN SIMBOLO_IGUAL => " + yytext()); }
"," { System.out.println("TOKEN COMA => " + yytext()); }
"label" { System.out.println("TOKEN LABEL => " + yytext()); }
"color" { System.out.println("TOKEN COLOR => " + yytext()); }
"fontcolor" { System.out.println("TOKEN FONTCOLOR => " + yytext()); }
"style" { System.out.println("TOKEN STYLE => " + yytext()); }
"]" { System.out.println("TOKEN CIERRE_CORCHETE => " + yytext()); }
"edge" { System.out.println("TOKEN EDGE => " + yytext()); }
"dir" { System.out.println("TOKEN DIR => " + yytext()); }
"hijos" { System.out.println("TOKEN HIJOS => " + yytext()); }
"}" { System.out.println("TOKEN CIERRE_LLAVE => " + yytext()); }
";" { System.out.println("TOKEN PUNTO_COMA => " + yytext()); }

/*Reglas*/

\"{VALOR_SHAPE}\" { System.out.println("TOKEN VALOR_SHAPE_COMILLAS => " + yytext()); }
{VALOR_SHAPE} { System.out.println("TOKEN VALOR_SHAPE => " + yytext()); }

\"{VALOR_DIR}\" { System.out.println("TOKEN VALOR_DIR_COMILLAS => " + yytext()); }
{VALOR_DIR} { System.out.println("TOKEN VALOR_DIR => " + yytext()); }

\"{VALOR_COLOR}\" { System.out.println("TOKEN VALOR_COLOR_COMILLAS => " + yytext()); }
{VALOR_COLOR} { System.out.println("TOKEN VALOR_COLOR => " + yytext()); }

\"{VALOR_STYLE}\" { System.out.println("TOKEN VALOR_STYLE_COMILLAS => " + yytext()); }
{VALOR_STYLE} { System.out.println("TOKEN VALOR_STYLE => " + yytext()); }

{INDICADOR_COMENTARIO_UNILINEA}(.)* { System.out.println("TOKEN COMENTARIO_UNILINEA => " + yytext()); }

"/*"([^]|\n)*"*/"  { System.out.println("TOKEN COMENTARIO_MULTILINEA => " + yytext()); }


\"{STRING_ESPACIO}\" { System.out.println("TOKEN STRING_COMILLAS => " + yytext()); }
{STRING} { System.out.println("TOKEN STRING => " + yytext()); }


/*Control -> Mostrar cadenas no reconocidas + ignorar espacios, nueva línea y tabulaciones*/
[ \t\n]+ { }
. { System.out.println("NO RECONOCIDO => " + yytext()); }















