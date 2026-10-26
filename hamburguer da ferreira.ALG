Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/10/2026
Var
// Seção de Declarações das variáveis 
   nome: caractere
   opcao, quantidade, totalItens: inteiro
   preco, subtotal, totalCompra: real
   desconto, totalPagar: real

inicio
   escreval ("=================")
   escreval ("   ==========      ")
   escreval("BURGUER DA FERREIRA")
    escreval ("   ==========      ")
       escreval ("=================")
   escreva("Digite o nome do cliente: ")
   leia(nome)

   totalCompra <- 0
   totalItens <- 0
   opcao <- 0

   enquanto opcao <> 5 faca
      escreval("")
      escreval("1 - Hamburguer - R$ 18,00")
      escreval("2 - Cachorro-quente - R$ 12,00")
      escreval("3 - Refrigerante - R$ 6,00")
      escreval("4 - Batata frita - R$ 10,00")
      escreval("5 - Finalizar pedido")
      escreva("Escolha: ")
      leia(opcao)

      preco <- 0

      escolha opcao
         caso 1
            preco <- 18
         caso 2
            preco <- 12
         caso 3
            preco <- 6
         caso 4
            preco <- 10
         caso 5
            preco <- 0
         outrocaso
            preco <- -1
      fimescolha

      se preco > 0 entao
         escreva("Quantidade: ")
         leia(quantidade)

         se quantidade > 0 entao
            subtotal <- preco * quantidade
            totalCompra <- totalCompra + subtotal
            totalItens <- totalItens + quantidade
            escreval("Subtotal: R$ ", subtotal:6:2)
            escreval("Total parcial: R$ ", totalCompra:6:2)
         senao
            escreval("Quantidade invalida!")
         fimse
      senao
         se opcao <> 5 entao
            escreval("Opcao invalida!")
         fimse
      fimse
   fimenquanto

   desconto <- 0

   se totalCompra >= 100 entao
      desconto <- totalCompra * 10 / 100
   fimse

   totalPagar <- totalCompra - desconto

   escreval("")
   escreval("RESUMO DO PEDIDO")
   escreval("Cliente: ", nome)
   escreval("Total de itens: ", totalItens)
   escreval("Valor da compra: R$ ", totalCompra:6:2)
   escreval("Desconto: R$ ", desconto:6:2)
   escreval("Total a pagar: R$ ", totalPagar:6:2)
   escreval("Obrigado pela preferencia!")

fimalgoritmo