#frozen_string_literal: true


  Before do
    page.driver.browser.manage.window.maximize 
    @login = Login.new
    @comprar = Comprar.new
    @comprarconectado = ComprarConectado.new
    @carrinho = Carrinho.new
    @cadastro = Cadastro.new
    @cadastro_email = Faker::Internet.email
    @cadastro_senha = Faker::Internet.password
    @cadastro_nome = Faker::Name.first_name
    @cadastro_sobrenome = Faker::Name.last_name
    @cadastro_end = Faker::Address.street_name
    @cadastro_city = Faker::Address.city
    @cadastro_ZIP = Faker::Number.number(digits: 5)
    @cadastro_phone = Faker::PhoneNumber.cell_phone
  end