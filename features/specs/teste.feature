#language:pt

    Funcionalidade: Demonstração de reaproveitamento de Step
        Essa feature tem por objetivo demonstrar o reaproveitamento de código 

    Contexto: Reaproveitar dado, quando e então
    Dado que eu acesso a página de Login

    @reaproveitamento
    Cenario: Teste
        Quando eu inserir "viniciusavanci13@gmail.com" e "1234mais"
        Então devo ser autorizado com sucesso  
