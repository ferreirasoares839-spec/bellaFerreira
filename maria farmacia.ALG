Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/11/2026


Var
   nome: vetor[1..6] de caractere
   codigo, estoque, validade, vendidos: vetor[1..6] de inteiro
   preco: vetor[1..6] de real
   i, opcao, cod, quantidade, posicao: inteiro
   cadastrados: inteiro
   faturamento: real

Inicio

   cadastrados <- 0
   faturamento <- 0
   opcao <- 0

   Para i de 1 ate 6 faca
      codigo[i] <- 0
      vendidos[i] <- 0
      estoque[i] <- 0
   FimPara

   Enquanto opcao <> 7 faca

      LimpaTela

      Escreval("==================================")
       Escreval("                                 ")
      Escreval("=====**MARIA DODOI FARMACIA**=====")
      Escreval("==================================")
      Escreval("1 - Cadastrar medicamentos")
      Escreval("2 - Entrada de estoque")
      Escreval("3 - Registrar venda")
      Escreval("4 - Consultar estoque")
      Escreval("5 - Consultar validade")
      Escreval("6 - Relatorio")
      Escreval("7 - Sair")
      Escreval("================================")
      Escreva("Escolha uma opcao: ")
      Leia(opcao)

      LimpaTela

      Escolha opcao

         Caso 1
            Escreval("===== CADASTRAR MEDICAMENTOS =====")

            Para i de 1 ate 6 faca
               Escreval("")
               Escreval("Medicamento ", i)

               Escreva("Digite o codigo: ")
               Leia(codigo[i])

               Escreva("Digite o nome: ")
               Leia(nome[i])

               Escreva("Digite o preco: ")
               Leia(preco[i])

               Escreva("Digite o estoque: ")
               Leia(estoque[i])

               Escreva("Digite o ano de validade: ")
               Leia(validade[i])
            FimPara

            cadastrados <- 6
            Escreval("Medicamentos cadastrados!")

         Caso 2
            Escreval("===== ENTRADA DE ESTOQUE =====")

            Se cadastrados = 0 entao
               Escreval("Cadastre os medicamentos primeiro.")
            Senao
               Escreva("Digite o codigo: ")
               Leia(cod)

               posicao <- 0

               Para i de 1 ate 6 faca
                  Se codigo[i] = cod entao
                     posicao <- i
                  FimSe
               FimPara

               Se posicao > 0 entao
                  Escreva("Quantidade para adicionar: ")
                  Leia(quantidade)

                  Se quantidade > 0 entao
                     estoque[posicao] <- estoque[posicao] + quantidade
                     Escreval("Estoque atualizado!")
                  Senao
                     Escreval("Quantidade invalida.")
                  FimSe
               Senao
                  Escreval("Medicamento nao encontrado.")
               FimSe
            FimSe

         Caso 3
            Escreval("===== REGISTRAR VENDA =====")

            Se cadastrados = 0 entao
               Escreval("Cadastre os medicamentos primeiro.")
            Senao
               Escreva("Digite o codigo: ")
               Leia(cod)

               posicao <- 0

               Para i de 1 ate 6 faca
                  Se codigo[i] = cod entao
                     posicao <- i
                  FimSe
               FimPara

               Se posicao > 0 entao
                  Escreva("Quantidade da venda: ")
                  Leia(quantidade)

                  Se quantidade > 0 entao
                     Se estoque[posicao] >= quantidade entao
                        estoque[posicao] <- estoque[posicao] - quantidade
                        vendidos[posicao] <- vendidos[posicao] + quantidade
                        faturamento <- faturamento + preco[posicao] * quantidade

                        Escreval("Venda realizada!")
                        Escreval("Medicamento: ", nome[posicao])
                        Escreval("Total: R$ ", preco[posicao] * quantidade)
                     Senao
                        Escreval("Estoque insuficiente.")
                     FimSe
                  Senao
                     Escreval("Quantidade invalida.")
                  FimSe
               Senao
                  Escreval("Medicamento nao encontrado.")
               FimSe
            FimSe

         Caso 4
            Escreval("===== CONSULTAR ESTOQUE =====")

            Se cadastrados > 0 entao
               Para i de 1 ate 6 faca
                  Escreval(nome[i], " - Estoque: ", estoque[i])

                  Se estoque[i] < 5 entao
                     Escreval("ATENCAO: Estoque baixo!")
                  FimSe
               FimPara
            Senao
               Escreval("Cadastre os medicamentos primeiro.")
            FimSe

         Caso 5
            Escreval("===== CONSULTAR VALIDADE =====")

            Se cadastrados > 0 entao
               Para i de 1 ate 6 faca
                  Escreval(nome[i], " - Validade: ", validade[i])
               FimPara
            Senao
               Escreval("Cadastre os medicamentos primeiro.")
            FimSe

         Caso 6
            Escreval("===== RELATORIO GERAL =====")
            Escreval("Faturamento total: R$ ", faturamento)
            Escreval("")

            Para i de 1 ate 6 faca
               Se cadastrados > 0 entao
                  Escreval(nome[i], " - Vendidos: ", vendidos[i])
               FimSe
            FimPara

         Caso 7
            Escreval("")
            Escreval("          __________________________")
            Escreval("         /                          /|")
            Escreval("        /__________________________/ |")
            Escreval("        |                          | |")
            Escreval("        |       __________         | |")
            Escreval("        |      /          \\        | |")
            Escreval("        |     /  DIPIRONA  \\       | |")
            Escreval("        |     \\            /       | |")
            Escreval("        |      \\__________/        | |")
            Escreval("        |                          | |")
            Escreval("        |                          | |")
            Escreval("        |__________________________|/")
            Escreval("")
            Escreval("             [  CAPSULA  ]")
            Escreval("")
            Escreval("Obrigado por utilizar a farmacia!")

         OutroCaso
            Escreval("Opcao invalida.")

      FimEscolha

      Se opcao <> 7 entao
         Escreval("")
         Escreval("Pressione ENTER para voltar ao menu.")
         Leia(nome[1])
      FimSe

   FimEnquanto

Fimalgoritmo
