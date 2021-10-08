# frozen_string_literal: true

  Dado('eu selecionar um produto') do                                           
     @comprarconectado.selecionar_produto
  end                                                                             
                                                                                  
  Quando('adicionar ele ao carrinho') do                                          
    @comprar.btn_cart
  end                                                                             

  Quando('pagar com transferência bancária') do                                          
    @comprarconectado.selecionar_transferencia
  end    

  Então('o meu pedido será concluido') do                                          
    esperado = 'Your order on My Store is complete.'
    expect(@comprarconectado.mensagem_sucesso)
  end  