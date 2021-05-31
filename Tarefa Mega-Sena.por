programa
{
	inclua biblioteca Util	
	
	funcao inicio()
	{
		inteiro opcao, apostas, num_dezenas, num_loteria[51], num_maximo

		escreva("\n===== LOTERIA ===== \n")
		escreva(" [1] Mega-Sena \n")
		escreva(" [2] Quina \n")
		escreva(" [3] Lotomania \n")
		escreva(" [4] Lotofácil \n")
		escreva("====== ******* ==== \n")
		escreva("Opção: ")
		leia(opcao)
		escreva("Informe quantas apostas você deseja: ") 
		leia(apostas)
		escreva("Informe quantos números você deseja: ")
		leia(num_dezenas)
		
		limpa()
		
//*********************************************************************************************************************************
		
		escolha(opcao)
		{
			caso 1: //Mega-Sena - arrumar ordem crescente 
				num_maximo = 60

				enquanto((num_dezenas < 6) ou (num_dezenas > 15)) 
				{
					escreva("Opção inválida! Informe novamente quantas dezenas deseja: ")
					leia(num_dezenas)
				}

				limpa()

				escreva("===== Mega-Sena ===== \n")

				repeticao(apostas, num_dezenas, num_maximo = 60)

				real gasto_megasena[16]

				gasto_megasena[6] = 4.50
				gasto_megasena[7] = 31.50
				gasto_megasena[8] = 126.00
				gasto_megasena[9] = 378.00
				gasto_megasena[10] = 945.00
				gasto_megasena[11] = 945.00
				gasto_megasena[12] = 4.158
				gasto_megasena[13] = 7.722
				gasto_megasena[14] = 13513.50
				gasto_megasena[15] = 22520.50

				escreva("Total gasto: R$ ", gasto_megasena[num_dezenas] * apostas, "\n")
				pare

//*********************************************************************************************************************************

			caso 2: // Quina - arrumar ordem crescente
				num_maximo = 80

				enquanto((num_dezenas < 5) ou (num_dezenas > 15)) 
				{
					escreva("Opção inválida! Informe novamente quantas dezenas deseja: ")
					leia(num_dezenas)
				}

				limpa()

				escreva("===== Quina ===== \n")
				
				repeticao(apostas, num_dezenas, num_maximo = 80)

				real gasto_quina[16]

				gasto_quina[5] = 2.00
				gasto_quina[6] = 12.00
				gasto_quina[7] = 42.00
				gasto_quina[8] = 112.00
				gasto_quina[9] = 252.00
				gasto_quina[10] = 504.00
				gasto_quina[11] = 924.00
				gasto_quina[12] = 1584.00
				gasto_quina[13] = 2574.00
				gasto_quina[14] = 4004.00
				gasto_quina[15] = 6006.00

				escreva("Total gasto: R$ ", gasto_quina[num_dezenas] * apostas, "\n")
				
				pare

//*********************************************************************************************************************************

			caso 3: // Lotomania (exceção na forma de execução)				
				escreva("===== Lotomania ===== \n")
				escreva("Neste jogo não é possível escolher a quantidade de números! \n\n")

				inteiro num_sorteado 
				logico num_repetido = falso 
				
				para(inteiro j = 0; j < apostas; j++)
				{
					para(inteiro i = 0; i <= 50; i++)
					{
						faca
						{
							num_sorteado = Util.sorteia(1, 100)
							num_repetido = falso
							
							para(inteiro k = 0; k < num_dezenas; k++)
							{
								se(num_sorteado == num_loteria[k])
								{
									num_repetido = verdadeiro 
									pare
								}
							}
							
						} enquanto(num_repetido)

						escreva(num_loteria[i] = num_sorteado, "  ")
					}

					escreva("\n\n")
				}

				real gasto_lotomania = 2.50

				escreva("Total gasto: R$ ", gasto_lotomania * apostas, "\n")
				
				pare

//*********************************************************************************************************************************

			caso 4: // Lotofácil
				num_maximo = 25
				
				enquanto((num_dezenas < 15) ou (num_dezenas > 20)) 
				{
					escreva("Opção inválida! Informe novamente quantas dezenas deseja: ")
					leia(num_dezenas)
				}

				limpa()

				escreva("===== Lotofácil ===== \n")

				repeticao(apostas, num_dezenas, num_maximo = 25)

				real gasto_lotofacil[21]

				gasto_lotofacil[15] = 2.50
				gasto_lotofacil[16] = 40.00
				gasto_lotofacil[17] = 340.00
				gasto_lotofacil[18] = 2040.00
				gasto_lotofacil[19] = 9690.00
				gasto_lotofacil[20] = 38760.00

				escreva("Total gasto: R$ ", gasto_lotofacil[num_dezenas] * apostas, "\n")
				
				pare
		}	
	}

	funcao repeticao(inteiro apostas, inteiro num_dezenas, inteiro num_maximo)
	{
		inteiro numSorteado
		logico numRepetido = falso
		inteiro num_loteria[51]

		para(inteiro j = 0; j < apostas; j++) // apostas
	     {
			para(inteiro i = 0; i < num_dezenas; i++) // numero de dezenas 
			{
				faca
				{
					numSorteado = Util.sorteia(1, num_maximo)
					numRepetido = falso
							
					para(inteiro k = 0; k < num_dezenas; k++)
					{
						se(numSorteado == num_loteria[k])
						{
							numRepetido = verdadeiro
							pare
						}
					}
					
				} enquanto(numRepetido)
				
				escreva(num_loteria[i] = numSorteado, "  ")	
			}
			

			escreva("\n\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4793; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */