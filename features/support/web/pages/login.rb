#frozen_string_literal: true

class Login
    include Capybara::DSL

    def acessar_pagina_principal
        visit 'http://automationpractice.com/index.php'
    end

    def btn_login
        find('a[title="Log in to your customer account"]').click
    end

    def login_email(email)
        find('#email').set email
    end

    def login_senha(senha)
        find('#passwd').set senha
    end

    def btn_singin
        click_button 'Sign in'
    end
    
end
