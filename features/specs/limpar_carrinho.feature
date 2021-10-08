#language:pt

    Funcionalidade: Limpar carrinho
        Como um cliente
        Eu quero limpar o carrinho
        Para que eu possa adicionar itens que me interessam mais 

    Contexto: Limpar carrinho
        Dado que eu esteja na página principal
        Quando eu inserir produtos no carrinho 

    @limpar_carrinho_cabecalho
    Cenario: Limpar carrinho pelo cabeçalho Cart
        E limpar o carrinho através do cabeçalho Cart
        Então o sistema deverá remover os produtos do carrinho

    @limpar_carrinho_summary
    Cenario: Limpar carrinho pela página Summary
        E limpar o carrinho através da página Summary
        Então o sistema removerá os produtos do carrinho
