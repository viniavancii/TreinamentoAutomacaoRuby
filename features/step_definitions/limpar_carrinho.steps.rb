# frozen_string_literal: true

    @limpar_carrinho_cabecalho
        Quando('eu inserir produtos no carrinho') do                                  
            @carrinho.adicionar_produtos_carrinho
        end                                                                           
                                                                            
        Quando('limpar o carrinho através do cabeçalho Cart') do                      
            @carrinho.limpar_carrinho_cabecalho
        end                                                                           
                                                                            
        Então('o sistema deverá remover os produtos do carrinho') do                  
            expect(page).not_to have_selector ".dt"
            sleep(2)
        end               
        
    @limpar_carrinho_summary
        Quando('limpar o carrinho através da página Summary') do
            @carrinho.limpar_carrinho_summary
        end

        Então('o sistema removerá os produtos do carrinho') do                  
            expect(page).not_to have_selector ".td"
            sleep(2)
        end  