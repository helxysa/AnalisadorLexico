%{
#include <stdio.h>
%}



DIGIT           [0-9]

%%
if                { printf("Estrutura de Controle IF\n"); }
else              { printf("Estrutura de Controle ELSE\n"); }
for               { printf("Estrutura de Repetição FOR\n"); }
while             { printf("Estrutura de Repetição WHILE\n"); }
do                { printf("Estrutura de Repetição DO\n"); }
{DIGIT}+          { printf("Numero inteiro: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identificador: %s\n", yytext); }
[+]               { printf("Operador de adiçao: +\n"); }
[-]               { printf("Operador de subtraçao: -\n"); }
[*]               { printf("Operador de multiplicaçao: *\n"); }
[/]               { printf("Operador de divisao: /\n"); }
"++"              { printf("Incrementador: ++ \n"); }  
"=="              { printf("Operador de igualdade: ==\n"); }
"!="              { printf("Operador de desigualdade: !=\n"); }
"&&"              { printf("Operador logico AND\n"); }
"||"              { printf("Operador logico OR\n"); }
"!"               { printf("Operador logico NOT\n"); }
"="               { printf("Operador de atribuição: =\n"); }
"<"               { printf("Operador relacional MENOR: <\n"); }
">"               { printf("Operador relacional MAIOR: >\n"); }
"<="              { printf("Operador relacional MENOR OU IGUAL: <=\n"); }
">="              { printf("Operador relacional MAIOR OU IGUAL: >=\n"); }
[(]               { printf("Parentese esquerdo: (\n"); }
[)]               { printf("Parentese direito: )\n"); }
[{]               { printf("Chave esquerda: {\n"); }
[}]               { printf("Chave direita: }\n"); }
[;]               { printf("Ponto e virgula: ;\n"); }
"do"              { printf("Palavra-chave DO\n"); }
"while"           { printf("Palavra-chave WHILE\n"); }
"for"             { printf("Palavra-chave FOR\n"); }
"else"            { printf("Palavra-chave ELSE\n"); }
"if"              { printf("Palavra-chave IF\n"); }
.                 { printf("Caractere nao reconhecido: %s\n", yytext); }
%%

int main() {
    printf("Digite sua linha de código: \n");
    yylex();
    return 0;
}
