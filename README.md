# Documentação

## Depêndencias
Necessário ter instalado um compilador de linguagem C++ e o make.
- Distribuições Debian🐧
```shell
sudo apt install build-essential cmake
```
## Algoritmo de Ford-Fulkerson
O algoritmo de Ford-Fulkerson (assim designado em honra de Lester Randolph Ford, Jr e Delbert Ray Fulkerson) é um algoritmo utilizado para resolver problemas de fluxo em rede (network flow). O algoritmo é empregado quando se deseja encontrar um fluxo de valor máximo que faça o melhor uso possível das capacidades disponíveis na rede em questão.

O problema resolvido pelo algoritmo é o de encontrar um fluxo máximo em uma rede. Uma rede pode ser uma rede elétrica, um sistema de transporte de fluidos ou a distribuição de produtos ao longo de uma rede de transportes, como uma malha ferroviária ou rodoviária.[2] Por exemplo, deseja-se transportar o máximo de minério de ferro através de uma rede ferroviária, limitadas pela capacidade de cada via. O tratamento aqui dado ao algoritmo supõe a existência de um único “ponto de entrada” (uma fonte) e de um único “ponto de saída” (um terminal).

**Fonte e mais informações:**  [Ford-Fulkerson-Wikipedia](https://pt.wikipedia.org/wiki/Algoritmo_de_Ford-Fulkerson)

## Parte 1 - Compilação:

Para compilar o programa, navegue até o diretório atual onde se encontram os arquivos correspondentes do programa, usando o terminal. Agora, basta executar o seguinte comando:

```bash
make
``````
Isso irá compilar o programa.

## Parte 2 - Execução

Após compilar o programa, você pode executá-lo de duas maneiras diferentes:

### Opção 1:
Rode o seguinte comando, e a saída será impressa diretamente no terminal:

```bash
make rodar_programa
```
### Opção 2:

Você também pode executar o programa e salvar a saída em um arquivo no diretório "/output". Para fazer isso, execute o seguinte comando:

```bash
make rodar_programa_saida_arquivo
```


## Inserir Novos Testes

**O arquivo teste.txt está localizado na pasta "input/"**

### Entrada:

### Atenção:
**O programa funciona da seguinte maneira ele espera que o grafo venha em ordem crescente e necessariamente deve-se iniciar em 0, caso contrário o programa irá finalizar exibindo uma mensagem de erro. Portanto os vértices devem seguir a ordem 0, 1, 2, 3.. e assim sucessivamente, além disso suporta grafos com no máximo 50 vértices.**

**Exemplo:**
```txt
0 1 11
0 2 12
1 3 12
2 1 1
2 4 11
3 5 19
4 3 7
4 5 4
```

Após inserir o grafo que deseja testar no arquivo "teste.txt", lembre-se de que o programa aceita apenas entradas no formato de números, como 0, 1, 2 e 3. Separe os vértices por espaços, conforme exemplificado abaixo:
Cada cada linha do arquivo deve possuir três colunas: a primeira referente a um vértice de origem, a segunda referente a um vértice de destino e a terceira referente à capacidade da aresta.

### Saída
A saída do programa é o fluxo máximo partindo do vértice 0 até os demais vertices do grafo e o fluxo elementar final de cada vértíce após achar o fluxo máximo.

## Alguns testes e suas saídas esperadas
### Teste 1:
**Input :**
```txt
0 1 11
0 2 12
1 3 12
2 1 1
2 4 11
3 5 19
4 3 7
4 5 4
```
**Output:**
```txt
Fluxo Máximo: (0, 1) = 11
Fluxo Elementar:
(0, 1) = 11


Fluxo Máximo: (0, 2) = 12
Fluxo Elementar:
(0, 2) = 12


Fluxo Máximo: (0, 3) = 12
Fluxo Elementar:
(0, 1) = 11
(0, 2) = 1
(1, 3) = 1
(2, 1) = 1


Fluxo Máximo: (0, 4) = 11
Fluxo Elementar:
(0, 2) = 11
(2, 4) = 11


Fluxo Máximo: (0, 5) = 23
Fluxo Elementar:
(0, 1) = 11
(0, 2) = 7
(1, 3) = 1
(2, 1) = 1
(2, 4) = 7
(3, 5) = 7
(4, 3) = 7
(4, 5) = 4


```
