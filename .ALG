
Algoritmo "Sistema_Hotel_10"
// Disciplina   : Linguagem e Lógica de Programação
// Professor    : Antonio Carlos Nicolodi
// Descrição    : Calcula o valor da hospedagem e do café da manhã
// Autor(a)     : Gustavo Ferreira dos Santos
// Data atual   : 21/10/2026

Var
// Seção de Declarações das variáveis
   nome: caractere
   diarias, cafe: inteiro
   hospedagem, valorCafe, total: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

   Escreva("Nome do hospede: ")
   Leia(nome)

   Escreva("Numero de diarias: ")
   Leia(diarias)

   Escreva("Deseja cafe da manha? (1 = Sim / 0 = Nao): ")
   Leia(cafe)

   hospedagem <- diarias * 180

   Se cafe = 1 Entao
      valorCafe <- diarias * 25
   Senao
      valorCafe <- 0
   FimSe

   total <- hospedagem + valorCafe

   Escreval("")
   Escreval("=== RESUMO DA HOSPEDAGEM ===")
   Escreval("Hospede: ", nome)
   Escreval("Hospedagem: R$ ", hospedagem:0:2)
   Escreval("Cafe da manha: R$ ", valorCafe:0:2)
   Escreval("Total a pagar: R$ ", total:0:2)

Fimalgoritmo
