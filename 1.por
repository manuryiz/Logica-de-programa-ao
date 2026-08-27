programa
{
    funcao inicio()
    {
        inteiro numeros[5]
        inteiro i
        escreva("Digite 5 números inteiros:\n")
        para(i = 0; i < 5; i++)
        {
            escreva("Número ", i + 1, ": ")
            leia(numeros[i])
        }
        escreva("\n--- Números na Ordem Inversa ---\n")
        para(i = 4; i >= 0; i--)
        {
            escreva(numeros[i], " ")
        }
        escreva("\n")
    }
}