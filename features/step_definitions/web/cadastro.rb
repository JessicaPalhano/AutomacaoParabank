Dado("que esteja na página Register") do
  @register_page = $web_pages.register
  @register_page.load
end

Quando("preencher os campos com dados validos") do
  #binding.pry
  usuario_valido = Factory::Dynamic.usuario_valido_cadastro
  @register_page.cadastrar_usuario(usuario_valido)
end


Então("deverá aparecer a conta do cliente") do
  @account_page = $web_pages.account
  expect(@account_page).to have_message_welcome
end

Quando("preencher os campos com tipo de usuário {string}") do |tipo_usuario|
  usuario_invalido = Factory::Static.static_data(tipo_usuario)
  @register_page.cadastro_invalido(usuario_invalido)
end


Então("deverá aparecer a mensagem {string}") do |mensagem|
  expect(@register_page.message_erro.text).to have_content(mensagem)
  #expect(@register_page).to have_message_password
  #expect(@register_page.message_password.text).to include mensagem
  #expect(@register_page.message_password.text).to eql mensagem
end
