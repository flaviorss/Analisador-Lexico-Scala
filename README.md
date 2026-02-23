<div align="center"  >
  <h1 align="center" >
    Analisador Léxico - Scala
    <br />
  </h1>
   <img src="https://skillicons.dev/icons?i=scala" alt="">&nbsp;&nbsp;&nbsp;
  <img src="https://skillicons.dev/icons?i=idea" alt="">
</div>

## Introdução

Este repositório contém a implementação do Laboratório 01, da disciplina de **Compiladores**, cujo objetivo é desenvolver um analisador léxico para a linguagem **Scala**.

## Objetivo do Trabalho

O trabalho consiste em implementar um programa que realiza a análise léxica de um código-fonte escrito em Scala, identificando seus lexemas / tokens / unidades léxicas e classificando-os de acordo com sua classe.
Cada token identificado é exibido em uma linha, no formato:

CLASSE_DO_TOKEN lexema

Nessa análise não são tratados o modo XML do Scala, caracteres Unicode, caracteres
fora do padrão ASCII e modos especiais de strings.

## Como executar

1. *Pré-Requisitos:*  Docker instalado <br><br>

2. *Contruir a imagem do Docker*
    - Na raiz do projeto, execute:
```sh
docker build -t lab01-scala .
```
3. *Executar o contêiner*
```sh
docker run --rm -it lab01-scala
```
4. *Executar o analisador léxico*
   - Dentro do contêiner, execute:
```sh
java Scala < main.scala
```
