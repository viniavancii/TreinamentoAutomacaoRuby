# frozen_string_literal: true

  Dado('que eu acesso a página de Login') do
    @login.acessar_pagina_principal
    @login.btn_login
  end
  
  Quando('eu inserir {string} e {string}') do |email, senha|
    @login.login_email(email)
    @login.login_senha(senha)
    @login.btn_singin
  end
  
  Então('devo ser autorizado com sucesso') do
    expect(page).to have_text 'MY ACCOUNT'
  end