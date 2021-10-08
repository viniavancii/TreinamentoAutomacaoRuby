#language:pt

@compra_sem_sucesso
Funcionalidade: Compra mal sucedida
    Como um cliente
    Eu quero não fazer login no site
    Para que eu possa fazer uma compra


Cenario: Compra mal sucedida
    Dado que eu esteja na página principal
    Quando eu inserir um produto no carrinho 
    E tentar realizar uma compra
    Então o sistema deverá solicitar o login