#language:pt

    Funcionalidade: Cadastro com preenchimento de campos
        Como um cliente
        Eu quero fazer um cadastro no site
        Para que eu tenha a minha própria conta

    Contexto: Cadastro
        Dado que eu esteja na página de Cadastro
        E insira um e-mail válido

    @cadastro_preenchimento
    Cenário: Cadastro através de preenchimento realizado com sucesso
        Quando eu preencho o campo First Name com "Vinicius", Last Name com "Avanci", Password com "1234mais"
        E Address com "Rua street", City com "Los Angeles" e State
        E Zip/Postal Code com "12345" e Mobile Phone com "12345"
        Então devo ser registrado com sucesso