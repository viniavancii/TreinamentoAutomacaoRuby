#language:pt

    @compra
    Funcionalidade: Compra com sucesso
        Como um cliente
        Eu quero comprar no site
        Para que eu possa pagar com cheque

    Contexto: Comprar produto
        Dado que eu esteja na página principal

    @comprar_sucesso
    Cenario: Compra com sucesso
        Dado que eu esteja logado com meu e-mail "viniciusavanci13@gmail.com" e senha "1234mais"
        Quando eu adicicionar um produto ao carrinho
        E tentar realizar uma compra
        E pagar com cheque
        Então o sistema deverá concluir meu pedido

    # @compra_caminho_alternativo
    # Cenario: Compra sem sucesso
    #     Quando eu adicicionar um produto ao carrinho
    #     E tentar realizar uma compra
    #     Então o sistema deverá solicitar meu login