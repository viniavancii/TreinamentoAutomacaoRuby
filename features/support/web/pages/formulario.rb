#frozen_string_literal: true

    Capybara.default_max_wait_time = 10

    class Cadastro
        include Capybara::DSL

        def acessar_pagina_cadastro
            visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
        end

        def cadastro_email(email)
            find('#email_create').set email
        end

        def btn_create
            click_button 'Create an account'
        end

        # def acessar_pagina_personal_information
        #     visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
        # end 

        def cadastro_nome(nome)
            find('#customer_firstname').set nome
        end

        def cadastro_sobrenome(sobrenome)
            find('#customer_lastname').set sobrenome
        end

        def cadastro_senha(senha)
            find('#passwd').set senha
        end

        def cadastro_end(endereco)
            find('#address1').set endereco
        end

        def cadastro_city(cidade)
            find('#city').set cidade
        end

        def cadastro_state
            find('#uniform-id_state').find("option[value='50']").click
        end

        def cadastro_ZIP(zip)
            find('#postcode').set zip
        end

        def cadastro_phone(telefone)
            find('#phone_mobile').set telefone
        end

        def btn_registrar
            click_button 'Register'
        end

        def verifica_cadastro_sucesso
            find('#center_column > h1').text
        end
    end
