#language:pt

@reset_pass
Funcionalidade: Recuperar senha
    Como um cliente
    Eu quero alterar a minha senha
    Para que eu possa eventualmente acessar a minha conta


Contexto: Página Alterar Senha
    Dado que eu esteja na página de alterar senha 


Cenario: Alterar a senha de forma válida
    Quando eu insiro o "viniciusavanci13@gmail.com"
    Então o sistema deverá me enviar um e-mail para alterar a senha

Cenario: Alterar a senha de forma inválida
    Quando eu insiro o "<E-mail2>"
    Então o sistema deverá apresentar o aviso "<Aviso>"

     Exemplos: 
        | E-mail2                      |  Aviso                                                  | 
        | viniciusavanci1111@gmail.com |  There is no account registered for this email address. |
        | viniciusavanci13@g           |  Invalid email address.                                 |
        |                              |  Invalid email address.                                 |

