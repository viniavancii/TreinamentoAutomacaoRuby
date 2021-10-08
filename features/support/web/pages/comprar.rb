#frozen_string_literal: true

    class Comprar
        include Capybara::DSL

        def voltar_pagina_principal
            find('a[title="My Store"]').click
        end

        def clicar_produto
            find('#homefeatured > li > div > div > h5 > a[title="Faded Short Sleeve T-shirts"]').click()
        end

        def btn_cart
            find('#add_to_cart > button > span').click
        end

        def btn_proceed_modal
            find('#layer_cart > div > div > div > a > span').click
        end

        def pagina_summary
            find('#center_column > p > a > span').click
        end

        def pagina_endereco
            find('p > button > span').click
        end

        def pagina_shipping
            find('label[for="cgv"]').click
            find('p > button > span').click
        end

        def pagina_payment
            find('a[title="Pay by check."]').click
            find('p > button > span').click
        end

        def texto_compra_sucesso
            find('p[class="alert alert-success"]').text
            #find(:xpath, '//p[contains(text(), "Your order")]').text
            #find(:xpath, '//*[text()="Your order on My Store is complete."]').text
        end
    end


