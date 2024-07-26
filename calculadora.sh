#!/bin/bash

# Mostrar opções de operação
echo "Escolha a operação que deseja realizar:"
echo "1. Adição"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
read -p "Digite o número da operação (1, 2, 3, ou 4): " operacao

# Pedir ao usuário para inserir dois números
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

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
