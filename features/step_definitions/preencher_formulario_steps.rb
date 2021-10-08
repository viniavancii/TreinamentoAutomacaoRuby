# frozen_string_literal: true

  Dado('insira um e-mail válido') do
    @cadastro.cadastro_email(Faker::Internet.email)
    @cadastro.btn_create
  end
  
  Quando('eu preencho o campo First Name com {string}, Last Name com {string}, Password com {string}') do |nome, sobrenome, senha|
    @cadastro.cadastro_nome(nome)
    @cadastro.cadastro_sobrenome(sobrenome)
    @cadastro.cadastro_senha(senha)
    
  end
  
  Quando('Address com {string}, City com {string} e State') do |endereco, cidade|
    @cadastro.cadastro_end(endereco)
    @cadastro.cadastro_city(cidade)
    @cadastro.cadastro_state    
  end
  
  Quando('Zip\/Postal Code com {string} e Mobile Phone com {string}') do |zip, telefone|
    @cadastro.cadastro_ZIP(zip)
    @cadastro.cadastro_phone(telefone)
    @cadastro.btn_registrar
  end
  
  Então('devo ser registrado com sucesso') do
    esperado = 'My account'
    expect(@cadastro.verifica_cadastro_sucesso)
  end