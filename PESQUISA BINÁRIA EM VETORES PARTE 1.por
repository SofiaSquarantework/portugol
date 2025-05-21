programa
{
    // Inclui a biblioteca Util, necessária para usar a função sorteia()
    inclua biblioteca Util --> u

    // Declaração de variáveis globais
    inteiro cont, contA, contB
    inteiro vetor[10]      // Vetor com 10 posições
    inteiro aux            // Variável auxiliar para a troca de valores

    // Função principal do programa
    funcao inicio()
    {
        // Chama a função que preenche e ordena o vetor
        preencheOrdenaVetor(vetor)

        // Exibe o vetor ordenado na tela
        para (contA = 0; contA <= 9; contA++) {
            escreva(vetor[contA] + " ")
        }
    }

    // Função que preenche o vetor com números aleatórios e depois o ordena
    funcao preencheOrdenaVetor(inteiro vetor[])
    {
        // Preenche o vetor com números aleatórios de 1 a 20
        para (cont = 0; cont <= 9; cont++) {
            vetor[cont] = u.sorteia(1, 20)
        }

        // Ordenação do vetor utilizando o método da bolha (bubble sort simplificado)
        para (contA = 0; contA <= 9; contA++) {
            para (contB = contA + 1; contB <= 9; contB++) {
                // Se o valor da posição contA for maior que o da posição contB, troca os valores
                se (vetor[contA] > vetor[contB]) {
                    aux = vetor[contB]
                    vetor[contB] = vetor[contA]
                    vetor[contA] = aux
                }
            }
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1423; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */