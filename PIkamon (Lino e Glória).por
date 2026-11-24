programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia opo
    inteiro opov, opof, opoc
    cadeia esco[5]
    inteiro vida, forca, cheia
    cadeia pokemon

    escreva("================================\nCENTRO POKÉMON\n================================\n\n")

    escreva("\n1 - Escolher Pokémon\n")
      
    escreva("\n2 - Ver instruções\n")

    escreva("\n3 - Sair\n")

    leia(esco[0])


    se (esco[0] == "2") {
      escreva("\nVocê Digita 1 para entrar na Escolha de pokemon.\nDigite o Número do Pokemon que deseja.\nEscolha se prefere que ele treine / recupera-se / participe / volte ao menu.\nDurante a batalha você escolhe se ele atacara ou usar poção.")
        
    }
    se (esco[0] == "1") {
      escreva("================================\nESCOLHA SEU POKÉMON\n================================\n\n")
      escreva("1 - Torchic\n    Vida: 100\n    Força: 25\n\n")
      escreva("2 - Treecko\n    Vida: 90\n    Força: 30\n\n")
      escreva("3 - Mudkip\n    Vida: 120\n    Força: 20\n\n")
      leia(esco[1])
      limpa()

      se (esco[1] == "2") {
        pokemon = "Treecko"
        forca = 30
        vida = 90
        cheia = 90
        opo = "Torchic"
        opof = 25
        opov = 100
        opoc = 100
      }
      se (esco[1] == "1") {
        pokemon = "Torchic"
        forca = 25
        vida = 100
        cheia = 100
        opo = "Mudkip"
        opof = 20
        opov = 120
        opoc = 120
      }

      se (esco[1] == "3") {
        pokemon = "Mudkip"
        forca = 20
        vida = 120
        cheia = 120
        opo = "Treecko"
        opof = 30
        opov = 90
        opoc = 90
      }
      escreva(esco[0])
    enquanto (esco[2] != "2"){
      escreva("\n================================\nÁREA DE TREINAMENTO\n================================\n\n")
      escreva("Pokémon: ",pokemon ,"\nVida: ", vida, "\nForça: ", forca, "\n\n--------------------------------\n\n")
      escreva("1 - Treinar força\n2 - Participar de batalha\n3 - Voltar ao menu\n")
      leia(esco[2])
        

      se (esco[2] == "1") {
          forca = forca + 5
        }
    }
    se (esco[2] == "2") {
      enquanto (opov >= 0 e vida >= 0) {
        escreva("\n================================\nBATALHA\n================================\n\n")
        escreva("SEU POKÉMON: ", pokemon,"\nVida: ", vida)
        escreva("\nOPONENTE: ",opo ,"\nVida: ",opov)
        escreva("\n\n--------------------------------\n\n1 - Atacar\n2 - Usar poção\n")

        se (esco[3] == "1") {
        vida = vida - opof
        }
        
        opov = opov - forca
        se (esco[3] == "2") {
          vida = cheia
        }
        leia(esco[3])
      }
      se (opov >= 0) {

     
      escreva("================================\nRESULTADO\n================================\n\n")
      escreva(pokemon, " venceu a batalha!\n","Vida restante: ", vida,"\n Parabéns pelo treinamento!")
      } senao {
        escreva("================================\nRESULTADO\n================================\n\n")
        escreva(pokemon, " Perdeu a batalha!")
        }
      }
    }
  
  }
}