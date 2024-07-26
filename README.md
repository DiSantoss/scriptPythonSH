
# Calculadora Simples - README
Este script é uma calculadora simples em Bash que permite ao usuário escolher uma operação matemática e fornecer dois números para realizar a operação selecionada.

## Como Executar o Script
1 - Certifique-se de que o script tem permissão para ser executado.

No terminal, navegue até o diretório onde o script está localizado e execute o comando:

```bash
chmod +x nome_do_script.sh
```
Substitua nome_do_script.sh pelo nome real do seu script.

2 - Execute o script.

Ainda no terminal, execute o script com o comando:

```
./nome_do_script.sh
```
Siga as instruções exibidas.

O script irá pedir que você escolha uma operação e insira dois números. Forneça os números e a operação desejada para obter o resultado.

## Explicação do Código
Aqui está uma descrição detalhada do que o script faz:

```
#!/bin/bash
```
* Esta linha indica que o script deve ser executado com o Bash.
```
# Mostrar opções de operação
echo "Escolha a operação que deseja realizar:"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
read -p "Digite o número da operação (1, 2, 3, ou 4): " operacao
```
* Estas linhas exibem opções de operações matemáticas para o usuário e capturam a escolha do usuário.
```
# Pedir ao usuário para inserir dois números
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2
```
* Estas linhas solicitam ao usuário que insira dois números para a operação.
```
# Realizar a operação escolhida
case $operacao in
    1)
        resultado=$(echo "$num1 + $num2" | bc)
        echo "Resultado da adição: $resultado"
        ;;
    2)
        resultado=$(echo "$num1 - $num2" | bc)
        echo "Resultado da subtração: $resultado"
        ;;
    3)
        resultado=$(echo "$num1 * $num2" | bc)
        echo "Resultado da multiplicação: $resultado"
        ;;
    4)
        if [ $num2 -eq 0 ]; then
            echo "Erro: divisão por zero."
        else
            resultado=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Resultado da divisão: $resultado"
        fi
        ;;
    *)
        echo "Operação inválida."
        ;;
esac
```
* case $operacao in: Baseia-se na escolha do usuário para determinar qual operação realizar.
* 1): Se a escolha for 1, realiza uma adição e exibe o resultado.
* 2): Se a escolha for 2, realiza uma subtração e exibe o resultado.
* 3): Se a escolha for 3, realiza uma multiplicação e exibe o resultado.
* 4): Se a escolha for 4, realiza uma divisão. Se o divisor for 0, exibe uma mensagem de erro; caso contrário, realiza a divisão e exibe o resultado com duas casas decimais.
*): Para qualquer outra escolha, exibe uma mensagem de operação inválida.
## Notas
* Certifique-se de ter o bc instalado em seu sistema, pois o script utiliza bc para realizar as operações matemáticas.
* Este script funciona apenas em sistemas compatíveis com Bash.
