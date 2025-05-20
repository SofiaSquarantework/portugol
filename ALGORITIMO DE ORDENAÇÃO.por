programa
{
    inclua biblioteca Util --> u

 
    inteiro vetor[10]
    inteiro aux[10] 

    funcao inicio()
    {
        inteiro opcao = 0
        logico result = verdadeiro

        enquanto (result) {
            escreva("\n======== MENU =========\n")
            escreva("1 - Gerar e Exibir Senhas\n")
            escreva("2 - Ordenar com Bubble Sort\n")
            escreva("3 - Ordenar com Merge Sort\n")
            escreva("4 - Sair\n")
            escreva("========================\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao) {
                caso 1:
                    gerar_senhas()
                    escreva("\nSenhas geradas:\n")
                    exibir_senhas()
                    pare

                caso 2:
                    bubble_sort()
                    escreva("\nSenhas ordenadas com Bubble Sort:\n")
                    exibir_senhas()
                    pare

                caso 3:
                    merge_sort(0, 9)
                    escreva("\nSenhas ordenadas com Merge Sort:\n")
                    exibir_senhas()
                    pare

                caso 4:
                    escreva("Saindo do programa...\n")
                   result = falso
                    pare

                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }
        }
    }

    funcao gerar_senhas()
    {
        inteiro i
        para(i = 0; i < 10; i++) {
            vetor[i] = u.sorteia(1, 999)
        }
    }

    funcao exibir_senhas()
    {
        inteiro i
        para(i = 0; i < 10; i++) {
            escreva(vetor[i], " ")
        }
        escreva("\n")
    }

    funcao bubble_sort()
    {
        inteiro i, j, temp
        para(i = 0; i < 10; i++) {
            para(j = 0; j < 9 - i; j++) {
                se(vetor[j] > vetor[j+1]) {
                    temp = vetor[j]
                    vetor[j] = vetor[j+1]
                    vetor[j+1] = temp
                }
            }
        }
    }

    funcao merge_sort(inteiro inicio, inteiro fim)
    {
        inteiro meio
        se(inicio < fim) {
            meio = (inicio + fim) / 2
            merge_sort(inicio, meio)
            merge_sort(meio + 1, fim)
            merge(inicio, meio, fim)
        }
    }

    funcao merge(inteiro inicio, inteiro meio, inteiro fim)
    {
        inteiro i, j, k

        i = inicio
        j = meio + 1
        k = inicio

        enquanto(i <= meio e j <= fim) {
            se(vetor[i] <= vetor[j]) {
                aux[k] = vetor[i]
                i = i + 1
            } senao {
                aux[k] = vetor[j]
                j = j + 1
            }
            k = k + 1
        }

        enquanto(i <= meio) {
            aux[k] = vetor[i]
            i = i + 1
            k = k + 1
        }

        enquanto(j <= fim) {
            aux[k] = vetor[j]
            j = j + 1
            k = k + 1
        }

        para(i = inicio; i <= fim; i++) {
            vetor[i] = aux[i]
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2813; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */