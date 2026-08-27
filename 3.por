programa
{
    funcao inicio()
    {
        cadeia nomes[3]
        real notas[3][2]
        real media
        inteiro i, j
        para(i = 0; i < 3; i++)
        {
            escreva("Digite o nome do ", i + 1, "º aluno: ")
            leia(nomes[i])

            para(j = 0; j < 2; j++)
            {
                escreva("Digite a ", j + 1, "ª nota de ", nomes[i], ": ")
                leia(notas[i][j])
            }
            escreva("\n")
        }
        escreva("==============================\n")
        escreva("       BOLETIM ESCOLAR        \n")
        escreva("==============================\n")
        
        para(i = 0; i < 3; i++)
        {
            media = (notas[i][0] + notas[i][1]) / 2.0
            escreva("Aluno: ", nomes[i], "\n")
            escreva("Notas: ", notas[i][0], " e ", notas[i][1], "\n")
            escreva("Média: ", media, "\n")
            escreva("------------------------------\n")
        }
    }
}