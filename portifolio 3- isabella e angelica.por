programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Calendario --> c
	
	funcao inicio()
	{
		inteiro numeroSorteado
		inteiro ano, mes, dia, hora, minuto, segundo

		numeroSorteado = u.sorteia(1, 100)

		ano = c.ano_atual()
		mes = c.mes_atual()
		dia = c.dia_mes_atual()
		hora = c.hora_atual(falso)
		minuto = c.minuto_atual()
		segundo = c.segundo_atual()

		escreva("O numero esta sendo sorteado... por favor, aguarde!\n")

		u.aguarde(5000)

		escreva("\n==============")
		escreva("\nNúmero sorteado: ", numeroSorteado)
		escreva("\n=============\n")

		escreva("Gerado em: ", dia, "/", mes, "/", ano, " às ", hora, ":", minuto, ":", segundo, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 422; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */