#frozen_string_literal: true

class Carrinho
    include Capybara::DSL

    def adicionar_produtos_carrinho
        find('#homefeatured > li > div > div > h5 > a[title="Faded Short Sleeve T-shirts"]').hover
        find('#homefeatured > li > div > div.right-block > div > a[data-id-product="1"] > span').click
        find('#layer_cart > div > div > div > span > span').click

        find('#homefeatured > li > div > div > h5 > a[title="Blouse"]').hover
        find('#homefeatured > li > div > div.right-block > div > a[data-id-product="2"] > span').click
        find('#layer_cart > div > div > div > span > span').click

        find('#homefeatured > li:nth-child(3) > div > div > h5 > a[title="Printed Dress"]').hover
        find('#homefeatured > li > div > div.right-block > div > a[data-id-product="3"] > span').click
        find('#layer_cart > div > div > div > span > span').click

        find('#homefeatured > li:nth-child(4) > div > div > h5 > a[title="Printed Dress"]').hover
        find('#homefeatured > li > div > div.right-block > div > a[data-id-product="4"] > span').click
        find('#layer_cart > div > div > div > span > span').click
   
        find('#homefeatured > li:nth-child(5) > div > div > h5 > a[title="Printed Summer Dress"]').hover
        find('#homefeatured > li > div > div.right-block > div > a[data-id-product="5"] > span').click
        find('#layer_cart > div > div > div > span > span').click

        find('#homefeatured > li:nth-child(6) > div > div > h5 > a[title="Printed Summer Dress"]').hover
        find('#homefeatured > li > div > div.right-block > div > a[data-id-product="6"] > span').click
        find('#layer_cart > div > div > div > span > span').click

        find('#homefeatured > li > div > div > h5 > a[title="Printed Chiffon Dress"]').hover
        find('#homefeatured > li > div > div.right-block > div > a[data-id-product="7"] > span').click
        find('#layer_cart > div > div > div > span > span').click
    end

    def limpar_carrinho_cabecalho
        find('#header > div > div > div > div:nth-child(3) > div > a ').hover
        find('dt:first-child > span > a').click
        find('dt:nth-child(3) > span > a').click
        find('dt:nth-child(5) > span > a').click
        find('dt:nth-child(7) > span > a').click
        find('dt:nth-child(9) > span > a').click
        find('dt:nth-child(11) > span > a').click
        find('dt.last_item > span > a').click
    end

    def limpar_carrinho_summary
        find('#header > div > div > div > div:nth-child(3) > div > a ').hover
        find('#button_order_cart > span').click
    
        find('#product_1_1_0_0 > td:nth-child(7) > div > a > i').click
        find('#product_2_7_0_0 > td:nth-child(7) > div > a > i').click
        find('#product_3_13_0_0 > td:nth-child(7) > div > a > i').click
        find('#product_4_16_0_0 > td:nth-child(7) > div > a > i').click
        find('#product_5_19_0_0 > td:nth-child(7) > div > a > i').click
        find('#product_6_31_0_0 > td:nth-child(7) > div > a > i').click
        find('#product_7_34_0_0 > td:nth-child(7) > div > a > i').click
    end
end