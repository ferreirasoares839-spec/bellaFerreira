Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/11/2026

var
   financeiro: vetor[1..6,1..2] de real
   saldo: vetor[1..6] de real
   meses: vetor[1..6] de caractere
   i, opcao, prejuizos: inteiro
   receitas, despesas, acumulado: real
   maior, menor, mediaR, mediaD: real
   cadastrado: logico

inicio

   opcao <- 0
   cadastrado <- falso

   meses[1] <- "Janeiro"
   meses[2] <- "Fevereiro"
   meses[3] <- "Marco"
   meses[4] <- "Abril"
   meses[5] <- "Maio"
   meses[6] <- "Junho"

   enquanto opcao <> 5 faca

     escreval("================================")
      escreval("===== CONTROLE FINANCEIRO =====")
      escreval("1 - Registrar valores")
      escreval("2 - Relatorio")
      escreval("3 - Indicadores")
      escreval("4 - Saldo acumulado")
      escreval("5 - Encerrar")
      escreval("================================")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      limpatela

      escolha opcao

         caso 1
            para i de 1 ate 6 faca
               escreval(meses[i])

               repita
                  escreva("Receita: ")
                  leia(financeiro[i,1])
               ate financeiro[i,1] >= 0

               repita
                  escreva("Despesa: ")
                  leia(financeiro[i,2])
               ate financeiro[i,2] >= 0

               saldo[i] <- financeiro[i,1] - financeiro[i,2]
            fimpara

            cadastrado <- verdadeiro
            escreval("Valores registrados!")
            limpatela
         caso 2

              se cadastrado entao
               para i de 1 ate 6 faca
                  escreval(meses[i], " Receita: ", financeiro[i,1])
                  escreval("Despesa: ", financeiro[i,2])
                  escreval("Saldo: ", saldo[i])

                  se saldo[i] > 0 entao
                     escreval("Lucro")
                  senao
                     se saldo[i] < 0 entao
                        escreval("Prejuizo")
                     senao
                        escreval("Equilibrio")
                     fimse
                  fimse
               fimpara
            senao
               escreval("Cadastre primeiro!")
            fimse

         caso 3
            se cadastrado entao
               receitas <- 0
               despesas <- 0
               acumulado <- 0
               prejuizos <- 0
               maior <- saldo[1]
               menor <- saldo[1]

               para i de 1 ate 6 faca
                  receitas <- receitas + financeiro[i,1]
                  despesas <- despesas + financeiro[i,2]
                  acumulado <- acumulado + saldo[i]

                  se saldo[i] > maior entao
                     maior <- saldo[i]
                  fimse

                  se saldo[i] < menor entao
                     menor <- saldo[i]
                  fimse

                  se saldo[i] < 0 entao
                     prejuizos <- prejuizos + 1
                  fimse
               fimpara

               mediaR <- receitas / 6
               mediaD <- despesas / 6

               escreval("Total receitas: ", receitas)
               escreval("Total despesas: ", despesas)
               escreval("Saldo acumulado: ", acumulado)
               escreval("Maior saldo: ", maior)
               escreval("Menor saldo: ", menor)
               escreval("Media receitas: ", mediaR)
               escreval("Media despesas: ", mediaD)
               escreval("Meses com prejuizo: ", prejuizos)
            senao
               escreval("Cadastre primeiro!")
            fimse

         caso 4
            se cadastrado entao
               acumulado <- 0

               para i de 1 ate 6 faca
                  acumulado <- acumulado + saldo[i]
                  escreval(meses[i], ": ", acumulado)
               fimpara
            senao
               escreval("Cadastre primeiro!")
            fimse

         caso 5
            escreval("Sistema encerrado!")

         outrocaso
            escreval("Opcao invalida!")

      fimescolha

   fimenquanto

fimalgoritmo