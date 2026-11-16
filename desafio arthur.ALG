Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/11/2026

var

   vendas: vetor[1..2, 1..3] de inteiro

   i, j: inteiro
   total, totalDia1, totalDia2: inteiro
   nomeProduto: vetor[1..3] de caractere

inicio

   nomeProduto[1] <- "salgados"
   nomeProduto[2] <- "sucos"
   nomeProduto[3] <- "bolos"

   escreval("===== CONTROLE DE VENDAS =====")
   escreval("")
   para i de 1 ate 2 faca
      escreval("DIA ", i)
      para j de 1 ate 3 faca
         escreva("Quantidade de ", nomeProduto[j], ": ")
         leia(vendas[i, j])
      fimpara
      escreval()
   fimpara


   total <- 0
   totalDia1 <- 0
   totalDia2 <- 0
   para i de 1 ate 2 faca
      para j de 1 ate 3 faca
         total <- total + vendas[i, j]
         se (i = 1) entao
            totalDia1 <- totalDia1 + vendas[i, j]
         senao
            totalDia2 <- totalDia2 + vendas[i, j]
         fimse
      fimpara
   fimpara


   escreval("===== RELATORIO FINAL ======")
   escreval()

   escreva("Dia 1: ")
   para j de 1 ate 3 faca
      escreva(vendas[1, j], "   ")
 fimpara
   escreval()

   escreva("Dia 2: ")
   para j de 1 ate 3 faca
      escreva(vendas[2, j], "   ")
 fimpara
   escreval()
   escreval()


   escreval("Total de unidades vendidas: ", total)

fimalgoritmo