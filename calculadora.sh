#!/bin/bash


python3 << EOF
nome = input("Qual o seu nome? ")
print("Olá,", nome, "seja bem-vindo a calculadora!")

while True:
    primeiro_numero = int(input("Digite o primeiro número: "))
    segundo_numero = int(input("Digite o segundo número: "))

    sinal = input("Escolha um operador (+, -, *, /): ")

    if sinal == "+":
        print("O resultado é", primeiro_numero + segundo_numero)
    elif sinal == "-":
        print("O resultado é", primeiro_numero - segundo_numero)
    elif sinal == "*":
        print("O resultado é", primeiro_numero * segundo_numero)
    elif sinal == "/":
        print("O resultado é", primeiro_numero / segundo_numero)
    else:
        print("Operador inválido!")

    confirmacao = input("Deseja calcular novamente? Digite sim ou não: ")
    if confirmacao.lower() in ["não", "nao"]:
        print("Obrigado por usar a calculadora!")
        break
EOF
