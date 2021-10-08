#language:pt

@login
Funcionalidade: Login
    Como um cliente
    Eu quero fazer login no site
    Para que eu possa acessar a minha conta


Contexto: Página de Login
    Dado que eu acesso a página de Login

@login_sucesso
Cenario: Login realizado com sucesso
    Quando eu inserir "viniciusavanci13@gmail.com" e "1234mais"
    Então devo ser autorizado com sucesso

@login_caminhos_alternativos
Esquema do Cenário: Login mal sucedido
    Quando eu inserir "<E-mail>" e "<Senha>"
    Então o sistema deverá apresentar a mensagem "<Mensagem>"

    Exemplos: 
        | E-mail                       | Senha     | Mensagem                   | 
        | viniciusavanci13@gmail.com   | 1234menos | Authentication failed.     |
        | viniciusavanci1111@gmail.com | 1234menos | Authentication failed.     |
        | viniciusavanci13@g           | 1234mais  | Invalid email address      |
        |                              |           | An email address required. |
        |                              | 1234mais  | An email address required. |
        | viniciusavanci13@gmail.com   |           | Password is required.      |







