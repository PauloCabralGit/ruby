#language: pt

@contexto
Funcionalidade: Trabalhar com contexto

Contexto:
Dado que eu tenha 10 laranjas na bolsa

Cenario: Colocar Laranja
Quando eu coloco 2 laranjas na bolsa
Então eu verifico se o total de laranjas na bolsa e 12

Cenario: Retirar Laranjas
Quando eu tiro 2 laranjas da bolsa
Então eu verifico quantas laranjas eu fiquei na bolsa
