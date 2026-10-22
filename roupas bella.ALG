Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/10/2026
Var
// Seção de Declarações das variáveis 
nome: caractere
   quantidade: inteiro
   preco, subtotal, desconto, total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
LimpaTela

   EscrevaL("================================================")
   EscrevaL("              Bella Ferreira  ")
   EscrevaL("        A LOJA QUE VOCÊ PRECISA")
   EscrevaL("================================================")
   EscrevaL(" ")

   EscrevaL("--- DADOS DO PRODUTO ---")
   Escreva("Nome do produto: ")
   Leia(nome)

   Escreva("Preco unitario (R$): ")
   Leia(preco)

   Escreva("Quantidade: ")
   Leia(quantidade)

   Se (preco > 0) e (quantidade > 0) entao

      subtotal <- preco * quantidade

      Se quantidade >= 3 entao
         desconto <- subtotal * 0.15
      Senao
         desconto <- 0
      FimSe

      total <- subtotal - desconto

      LimpaTela

      EscrevaL("================================================")
      EscrevaL("             Bella Ferreira")
      EscrevaL("              RELATORIO DE VENDA")
      EscrevaL("================================================")
      EscrevaL(" ")
      EscrevaL("Produto: ", nome)
      EscrevaL("Preco unitario: R$ ", preco:0:2)
      EscrevaL("Quantidade: ", quantidade)
      EscrevaL("Subtotal: R$ ", subtotal:0:2)
      EscrevaL("Desconto: R$ ", desconto:0:2)
      EscrevaL("================================================")
      EscrevaL("TOTAL A PAGAR: R$ ", total:0:2)
      EscrevaL("================================================")
      EscrevaL(" ")
      EscrevaL(" Obrigado por comprar na   Bella Ferreira  !")
      EscrevaL("================================================")

   Senao
      EscrevaL(" ")
      EscrevaL("ERRO: Informe preco e quantidade")
      EscrevaL("maiores que zero.")
   FimSe

Fimalgoritmo
