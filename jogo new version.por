programa
{
    funcao inicio()
    {  
        inteiro vidajogador = 350, vidaGigante = 450, ataquejogador = 50, ataqueGigante = 40
        inteiro rodada = 1, opcaoMenu = 0, item = 0
        
        inteiro qtdEspadaMagica = 2
        inteiro qtdAmuleto = 1
        inteiro qtdLanterna = 1
        inteiro qtdPocao = 2

        inteiro pausarRodada = 0
        inteiro contadorFogo = 0
        inteiro contadorEfeitoMenu = 0

        enquanto (vidajogador > 0 e vidaGigante > 0)
        {
            limpa()
            
            escreva("========================================================\n")
            escreva("- - - STATUS DA BATALHA (RODADA ", rodada, ") - - -\n")
            escreva("Vida do Jogador = ", vidajogador, " HP | Vida do Gigante = ", vidaGigante, " HP\n")
            escreva("========================================================\n\n")
            
            escreva("O que voce deseja fazer?\n")
            escreva("1 - Atacar com a Espada\n")
            escreva("2 - Correr\n")
            escreva("3 - Abrir Mochila (Usar Item)\n")
            escreva("Escolha uma opção: ")
            leia(opcaoMenu)
            
            escreva("\n") 

            se (opcaoMenu == 3)
            {
                faca 
                {
                    limpa()
                    escreva("- - - SUA MOCHILA - - -\n")
                    escreva("1- Espada roxa magica (Qtd: ", qtdEspadaMagica, ") - causa 50 HP de ataque\n")
                    escreva("2- Amuleto de protecao rosa (Qtd: ", qtdAmuleto, ") - bloqueia o proximo ataque\n")
                    escreva("3- Lanterna (Qtd: ", qtdLanterna, ") - cega o Gigante\n")
                    escreva("4- Pocao de cura (Qtd: ", qtdPocao, ") - aumenta 100 HP\n")
                    escreva("0- Voltar ao menu principal\n")
                    escreva("Escolha o item: ")
                    leia(item)

                    se ((item == 1 e qtdEspadaMagica <= 0) ou 
                        (item == 2 e qtdAmuleto <= 0) ou 
                        (item == 3 e qtdLanterna <= 0) ou 
                        (item == 4 e qtdPocao <= 0))
                    {
                        escreva("\n[AVISO] Esse item esgotou! Escolha outra ação.\n")
                        escreva("Digite 0 para tentar novamente: ")
                        leia(item)
                        item = -1 
                    }
                } 
                enquanto (item < 0 ou item > 4) 

                se (item == 1)
                {
                    escreva("\nVoce atacou o Gigante com a Espada Roxa Mágica e causou 50 HP de dano!\n")
                    vidaGigante = vidaGigante - 50
                    qtdEspadaMagica = qtdEspadaMagica - 1
                }
                senao se (item == 2)
                {
                    escreva("\nVocê ativou o Amuleto de Proteção Rosa! O golpe do Gigante será bloqueado.\n")
                    ataqueGigante = 0
                    qtdAmuleto = qtdAmuleto - 1
                }
                senao se (item == 3)
                {
                    escreva("\nVocê usou a Lanterna e bloqueou a visão do Gigante!\n")
                    ataqueGigante = 0
                    qtdLanterna = qtdLanterna - 1
                }
                senao se (item == 4)
                {
                    escreva("\nVocê usou a Poção de Cura e recuperou 100 HP!\n")
                    vidajogador = vidajogador + 100
                    qtdPocao = qtdPocao - 1
                }
            }
            senao se (opcaoMenu == 1)
            {
                escreva("\nVocê atacou com a Espada normal e causou ", ataquejogador, " de dano!\n")
                vidaGigante = vidaGigante - ataquejogador
            }
            senao se (opcaoMenu == 2)
            {
                escreva("\nVocê tentou fugir, mas o Gigante te cercou!\n")
            }
            senao
            {
                escreva("\nOpção inválida! Você se distraiu nesse turno.\n")
            }

            se (vidaGigante > 0)
            {
                escreva("O Gigante ataca de volta e causa ", ataqueGigante, " de dano!\n\n")
                vidajogador = vidajogador - ataqueGigante
                ataqueGigante = 40 
            }

            rodada = rodada + 1
            
            se (opcaoMenu == 1 ou opcaoMenu == 2 ou opcaoMenu == 3)
            {
                contadorEfeitoMenu = 0
                enquanto (contadorEfeitoMenu < 2)
                {
                    escreva("*")
                    contadorEfeitoMenu = contadorEfeitoMenu + 1
                }
                escreva("\n")
            }

            escreva("Digite 0 e aperte Enter para avançar o turno: ")
            leia(pausarRodada)
        }

        limpa()
        
        inteiro efeitoDramatico = 0
        enquanto(efeitoDramatico < 3)
        {
            escreva(". ")
            efeitoDramatico = efeitoDramatico + 1
        }
        
        escreva("\n\n")
        
        se (vidaGigante <= 0 e vidajogador > 0)
        {
            enquanto (contadorFogo < 3)
            {
                escreva("🔥 O Gigante começa a pegar fogo! 🔥\n")
                contadorFogo = contadorFogo + 1
            }
            
            escreva("========================================================\n")
            escreva("¡VITÓRIA DIVINA! O gigante pegou fogo e caiu em cinzas.\n")
            escreva("Você salvou o reino e ganhou a batalha!\n")
            escreva("=================================================\n")
        }
        senao
        {
            se (vidajogador <= 0 ou vidaGigante > 0 ou vidajogador == 0)
            {
                escreva("==================================================\n")
                escreva("GAME OVER! Suas forças acabaram e voce perdeu...\n")
                escreva("O Gigante venceu desta vez. O reino está em perigo! Tente novamente.\n")
                escreva("========================================================\n")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4433; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */