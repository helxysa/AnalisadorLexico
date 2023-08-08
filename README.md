# AnalisadorLexico

## Tecnologias
- Lib Flex
- C

## Clonar
git clone https://github.com/helxysa/AnalisadorLexico

## Como iniciar projeto Windows
Obs: Necessario o MinGW e Flex no Path de variaveis de ambiente

### 1
Entrar no diretorio da pasta
### 2
flex analisador.l
### 3
Executar o comando gcc lex.yy.c -o analisador -lfl
### 4
Executar ./analisador

## Como iniciar projeto LINUX
Obs: necessario instalar o flex

### Instalação do flex no Linux

sudo apt-get update
sudo apt-get install flex

### 1
Entrar no diretorio da pasta
### 2
flex analisador.l
### 3
Executar o comando gcc lex.yy.c -o analisador -lfl
### 4
Executar ./analisador
