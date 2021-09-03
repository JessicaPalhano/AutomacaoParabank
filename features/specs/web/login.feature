#language: pt

Funcionalidade: Realizar login
  Como cliente na aplicação
  Quero realizar meu login
  Para acessar minha conta

  Contexto: Home
    Dado que esteja na home

    @login_sucesso
    Cenário: Realizar login com sucesso
      Quando realizar o login com os dados válidos
      Então deverá aparecer a conta do cliente
