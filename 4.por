programa
{
    funcao inicio()
    {
        inteiro matriz[3][3]
        inteiro linha, coluna, soma = 0
        escreva("Digite os valores inteiros para a matriz 3x3:\n")
        para(linha = 0; linha < 3; linha++)
        {
            para(coluna = 0; coluna < 3; coluna++)
            {
                escreva("Elemento [", linha, "][", coluna, "]: ")
                leia(matriz[linha][coluna])
            
                soma = soma + matriz[linha][coluna]
            }
        }


        escreva("\n--- Resultado ---\n")
        escreva("A soma de todos os elementos da matriz é: ", soma, "\n")
    }
}