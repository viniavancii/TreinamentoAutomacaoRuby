 
 
  Dado('que eu esteja na página principal') do                                          
    @login.acessar_pagina_principal
  end                                                                             
                                                                                  
  Dado('que eu esteja logado com meu e-mail {string} e senha {string}') do |email, senha|                                                 
    @login.btn_login
    @login.login_email(email)
    @login.login_senha(senha)
    @login.btn_singin
    @comprar.voltar_pagina_principal
  end                                                                             
                                                                                                                                                            
                                                                                  
  Quando('eu adicicionar um produto ao carrinho') do                                           
    @comprar.clicar_produto
    @comprar.btn_cart
  end                                                                             
                                                                                  
  Quando('tentar realizar uma compra') do
    @comprar.btn_proceed_modal                                     
    @comprar.pagina_summary
    @comprar.pagina_endereco
    @comprar.pagina_shipping
  end        
  
  Quando('pagar com cheque') do
    @comprar.pagina_payment
  end       
                                                                                  
  Então('o sistema deverá concluir meu pedido') do                                
    esperado = 'Your order on My Store is complete.'
    expect(@comprar.texto_compra_sucesso)
  end                                                                             


  # Dado('que eu esteja na página principal') do                                          
  #   @login.acessar_pagina_principal
  # end                                                                             
                                                                                                                                                               
  # Quando('eu adicicionar um produto ao carrinho') do                                           
  #   @comprar.clicar_menu
  #   @comprar.clicar_produto
  #   sleep 3
  # end                                                                             
                                                                                  
  # Quando('tentar realizar uma compra') do                                       
  #   @comprar.btn_cart
  #   # @comprar.btn_proceed
  # end                                                                             
                                                                                  
  # Então('o sistema deverá solicitar meu login') do                                
     
  # end                           