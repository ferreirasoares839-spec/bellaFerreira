Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2026
Var
// Seção de Declarações das variáveis 
 abastecimentos, i: inteiro
   litros, preco, custo, totalLitros: real
   totalGasto, media: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  escreva("Quantos abastecimentos serao registrados? ")
   leia(abastecimentos)

   enquanto abastecimentos <= 0 faca
      escreva("Digite uma quantidade maior que zero: ")
      leia(abastecimentos)
   fimenquanto   i <- 1
   totalLitros <- 0
   totalGasto <- 0

   enquanto i <= abastecimentos faca
      escreval("Abastecimento ", i)

      escreva("Quantidade de litros: ")
      leia(litros)

      enquanto litros <= 0 faca
         escreva("Digite um valor maior que zero: ")
         leia(litros)
      fimenquanto

      escreva("Preco por litro: R$ ")
      leia(preco)

      enquanto preco <= 0 faca
         escreva("Digite um preco maior que zero: R$ ")
         leia(preco)
      fimenquanto

      custo <- litros * preco
      totalLitros <- totalLitros + litros
      totalGasto <- totalGasto + custo

      escreval("Custo deste abastecimento: R$ ", custo:0:2)

      i <- i + 1
   fimenquanto

   media <- totalGasto / totalLitros

   escreval("Total de litros: ", totalLitros:0:2)
   escreval("Total gasto: R$ ", totalGasto:0:2)
   escreval("Preco medio por litro: R$ ", media:0:2)

   se totalGasto > 300 entao
      escreval("Gasto elevado com combustivel!")
   senao
      escreval("Gasto dentro do limite!")
   fimse

fimalgoritmo

