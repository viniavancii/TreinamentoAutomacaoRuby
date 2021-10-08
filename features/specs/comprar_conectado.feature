#language:pt

    Funcionalidade: Compra conectado com sucesso
        Como um cliente
        Eu quero comprar no site
        Para que eu possa pagar com transferência bancária

    Contexto: Comprar produto com transferência bancária
        Dado que eu esteja na página principal

    @comprar_tranferencia_sucesso
    Cenario: Compra transferência bancária com sucesso
        Dado que eu esteja logado com meu e-mail "houda2875@uorak.com" e senha "12345"
        E eu selecionar um produto
        Quando adicionar ele ao carrinho
        E tentar realizar uma compra 
        E pagar com transferência bancária
        Então o meu pedido será concluido