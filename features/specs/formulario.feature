#language:pt

    @cadastro
    Funcionalidade: Cadastro
        Como um cliente
        Eu quero fazer um cadastro no site
        Para que eu tenha a minha própria conta

    Contexto: Página de Cadastro
        Dado que eu esteja na página de Cadastro
        E insira meu e-mail 

    @cadastro_sucesso
    Cenário: Cadastro realizado com sucesso
        Quando eu preencho todos os campos obrigatórios
        Então devo criar uma conta com sucesso 


    