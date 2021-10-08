# frozen_string_literal: true

  Dado('que eu esteja na página de Cadastro') do 
    @cadastro.acessar_pagina_cadastro
  end

  Dado('insira meu e-mail') do 
    @cadastro.cadastro_email(Faker::Internet.email)
    @cadastro.btn_create
  end

  # Quando('eu acesso a página de Informações Pessoais') do
  # @cadastro.acessar_pagina_personal_information
  # end

  Quando('eu preencho todos os campos obrigatórios') do
    @cadastro.cadastro_nome(Faker::Name.first_name)
    @cadastro.cadastro_sobrenome(Faker::Name.last_name)
    @cadastro.cadastro_senha(Faker::Internet.password)
    @cadastro.cadastro_end(Faker::Address.street_name)
    @cadastro.cadastro_city(Faker::Address.city)
    @cadastro.cadastro_state
    @cadastro.cadastro_ZIP(Faker::Number.number(digits: 5))
    @cadastro.cadastro_phone(Faker::PhoneNumber.cell_phone)
    @cadastro.btn_registrar
  end

  
  Então('devo criar uma conta com sucesso') do
    esperado = 'My account'
    expect(@cadastro.verifica_cadastro_sucesso)
  end
