programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inclua biblioteca Calendario --> cal
	funcao inicio()
	{
		cadeia nomeCliente, cupomDigitado
		inteiro opcaoRoupa, continuarCompra = 1 
		real precoPeca = 0.0, subtotal = 0.0, precoFinal = 0.0, desconto = 0.0
		real maiorPreco = 0.0
		escreva("--- BEM-VINDO À LOJA DE ROUPAS Noir & Blanc -\n")
		escreva("Digite o seu primeiro nome: ")
		leia(nomeCliente)
		nomeCliente = t.caixa_alta(nomeCliente)
		escreva("\nOlá, ", nomeCliente, "!\n")
		faca
		{
			escreva("\n--- NOSSO CATÁLOGO -\n")
			escreva("1) Mini saia cargo - R$ 89,90\n")
			escreva("2) Calça Cargo Black - R$ 149,95\n")
			escreva("3) Meia calça flanelada - R$ 19,90\n")
			escreva("Escolha o número da opção desejada: ")
			leia(opcaoRoupa)
			escolha(opcaoRoupa)
			{
				caso 1: 
					precoPeca = 89.90 
					pare
				caso 2: 
					precoPeca = 149.95 
					pare
				caso 3: 
					precoPeca = 19.90 
					pare
				caso contrario: 
					escreva("Opção inválida! Selecione um item válido.\n")
					precoPeca = 0.0
			}
 
			se (precoPeca > 0.0)
			{
				subtotal = subtotal + precoPeca

				se (precoPeca > maiorPreco)
				{
					maiorPreco = precoPeca
				}
 
				escreva("\n[Site] Adicionando item ao carrinho... ")
				u.aguarde(1200) 
				escreva("Item adicionado!\n")
			}
 
			escreva("\nDeseja comprar mais uma peça? (Digite 1 para SIM ou 2 para NÃO): ")
			leia(continuarCompra)
 
		} enquanto (continuarCompra == 1)
 
		se (subtotal == 0.0)
		{
			escreva("\nNenhum produto foi adicionado no carrinho. Sistema encerrado.\n")
			retorne
		}
 
		escreva("\nDigite um cupom de desconto (ou aperte ENTER para pular): ")
		leia(cupomDigitado)
 
		se (t.numero_caracteres(cupomDigitado) > 0)
		{
			desconto = u.sorteia(10, 25)
			escreva("Cupom validado! Você ganhou ", desconto, "% de desconto no valor total.")
		}
		senao
		{
			escreva("Nenhum cupom aplicado.")
		}
 
		precoFinal = subtotal - (subtotal * (desconto / 100))
		precoFinal = mat.arredondar(precoFinal, 2)
 
		escreva("\n\n========================================")
		escreva("\n          COMPRA REALIZADA COM SUCESSO    ")
		escreva("\n========================================")
		escreva("\nCliente: ", nomeCliente)
		escreva("\nItem mais caro do carrinho: R$ ", maiorPreco) 
		escreva("\nValor total bruto: R$ ", subtotal)
		escreva("\nValor final a pagar (com desconto): R$ ", precoFinal)
		inteiro diaVenda = cal.dia_mes_atual()
		inteiro anoVenda = cal.ano_atual()
		inteiro mesVenda = cal.mes_atual() 
		escreva("\nData do pedido: ", diaVenda, "/", mesVenda, "/", anoVenda)
		escreva("\n==========\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2659; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */