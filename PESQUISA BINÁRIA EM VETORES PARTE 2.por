programa
{
    // Inclusão da biblioteca Util para uso da função sorteia()
    inclua biblioteca Util --> u

    // Declaração de variáveis globais
    inteiro cont, contA, contB
    inteiro vetor[10]      // Vetor com 10 posições
    inteiro aux            // Variável auxiliar para ordenação

    // Função principal
    funcao inicio()
    {
        // Preenche o vetor com números aleatórios e o ordena
        preencheOrdenaVetor(vetor)

        // Início da pesquisa binária
        inteiro inicial = 0          // Posição inicial da busca
        inteiro final = 9            // Posição final da busca
        inteiro meio                 // Índice do elemento do meio
        logico encontrado = falso    // Variável para indicar se o valor foi encontrado
        inteiro busca                // Valor que o usuário deseja encontrar

        // Solicita ao usuário o valor que será pesquisado
        escreva("\nDigite o valor para pesquisar: ")
        leia(busca)

        // Estrutura de repetição para realizar a pesquisa binária
        enquanto ((inicial <= final) e (nao encontrado)) {
            meio = (inicial + final) / 2  // Calcula o meio do intervalo

            // Verifica se o valor no meio do vetor é igual ao buscado
            se (vetor[meio] == busca) {
                encontrado = verdadeiro
            }
            // Se o valor no meio for maior que o buscado, busca na metade inferior
            senao se (vetor[meio] > busca){
                final = meio - 1
            }
            // Caso contrário, busca na metade superior
            senao {
                inicial = meio + 1 
            }
        }

        // Exibe o resultado da busca
        se (encontrado == verdadeiro) {
            escreva("Valor encontrado no vetor.\n")
        }
        senao {
            escreva("Valor inexistente. /n")  // Correção sugerida: "\n" ao invés de "/n"
        }
    }

    // Função que preenche o vetor com números aleatórios e ordena em ordem crescente
    funcao preencheOrdenaVetor(inteiro vetor[])
    {
        // Preenche o vetor com números aleatórios de 1 a 20
        para (cont = 0; cont <= 9; cont++) {
            vetor[cont] = u.sorteia(1, 20)
        }

        // Ordena o vetor usando um algoritmo de ordenação simples (semelhante ao Bubble Sort)
        para (contA = 0; contA <= 9; contA++) {
            para (contB = contA + 1; contB <= 9; contB ++) {
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
 * @POSICAO-CURSOR = 2646; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */