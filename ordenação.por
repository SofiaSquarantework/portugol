programa
{
    // Declaração das variáveis
    inteiro numero, posicao
    inteiro vetor[3]
    inteiro opcao

    funcao inicio()
    {
        // Preenchimento do vetor com 3 valores fornecidos pelo usuário
        para(inteiro i = 0; i < 3; i++) {
            escreva("Digite um valor: \n") // Solicita o valor ao usuário
            leia(vetor[i])                 // Armazena o valor na posição i do vetor
        }

        // Solicita ao usuário o número que deseja pesquisar no vetor
        escreva("Qual valor quer pesquisar? : ")
        leia(numero)

        posicao = 0 // Inicia a busca a partir da posição 0

        // Busca Linear: percorre o vetor até encontrar o número ou até o final
        enquanto((posicao < 2) e (vetor[posicao] != numero)) {
            posicao++ // Avança para a próxima posição
        }

        // Verifica se o número foi encontrado
        se(vetor[posicao] == numero) {
            escreva("Número encontrado no vetor!") // Mensagem de sucesso
        }
        senao {
            escreva("Número não encontrado...")     // Mensagem de falha
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */