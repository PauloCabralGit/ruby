#language: pt

@end_to_end

Funcionalidade: realizando teste end to end sem resetar seção

Cenario: Criar usuario com sucesso
Quando eu cadastro o usuario
Então verifico se o usuario foi cadastrado

Cenario: Editar usuario com sucesso
Quando edito um usuario
Então verifico se o usuario foi editado