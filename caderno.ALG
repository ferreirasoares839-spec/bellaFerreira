Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2026
Var
// Seção de Declarações das variáveis 
   opcao: inteiro
   total: real
inicio
   opcao <- 0
   total <- 0

   enquanto opcao <> 4 faca
      escreval("=== CAIXA DA PAPELARIA ===")
      escreval("1 - Caderno: R$ 15,00")
      escreval("2 - Caneta: R$ 3,00")
      escreval("3 - Borracha: R$ 2,00")
      escreval("4 - Finalizar compra")
      escreva("Escolha uma opcao: ")
      leia(opcao)

escolha opcao
caso 1
total <- total + 15
            escreval("Caderno adicionado!")
         caso 2
            total <- total + 3
            escreval("Caneta adicionada!")
         caso 3
            total <- total + 2
            escreval("Borracha adicionada!")
         caso 4
            escreval("Finalizando compra...")
         outrocaso
            escreval("Opcao invalida!")
      fimescolha

      escreval("Total parcial: R$ ", total)
      escreval("")
   fimenquanto

   escreval("Valor total da compra: R$ ", total)
fimalgoritmo