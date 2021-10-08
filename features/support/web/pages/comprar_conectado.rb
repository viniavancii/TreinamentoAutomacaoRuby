#frozen_string_literal: true

class ComprarConectado
    include Capybara::DSL

    def selecionar_produto
        find('#homefeatured > li > div > div > h5 > a[title="Blouse"]').click
    end

    def selecionar_transferencia 
        find('a[title="Pay by bank wire"]').click
        find('p > button > span').click
    end

    def mensagem_sucesso
        find('div > p > strong').text
    end
end