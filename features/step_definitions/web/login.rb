Dado("que esteja na home") do
  @home_page = $web_pages.home
  @home_page.load
end

Quando("realizar o login com os dados válidos") do
  valid_user = Factory::Static.static_data('usuario_valido_login')
  @home_page.realizar_login(valid_user["username"], valid_user["password"])
  @register_page = $web_pages.register
end
