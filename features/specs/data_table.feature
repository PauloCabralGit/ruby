#language: pt

@datatable
Funcionalidade: Trabalhar com datatable

Contexto: 
Dado que eu tenho laranjas
|Laranjas|
|10      |

Cenario: Cortar laranjas
Quando eu corto
|Laranjas|
|2       |
Então eu verifico quantas laranjas sobraram inteiras

Cenario: Chupar laranjas
Quando eu chupo laranjas
|Laranjas|
|2      |
Então eu verifico quantas laranjas sobrara, 
