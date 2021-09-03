# language: pt

@cadastro
Funcionalidade: Realizar cadastro
  Como usuário no site ParaBank
  Quero fazer um cadastro
  Para depositar dinheiro

    Contexto: Página Register
      Dado que esteja na página Register

    @cadastro_sucesso
    Cenário: Realizar cadastro com sucesso
      Quando preencher os campos com dados validos
      Então deverá aparecer a conta do cliente

    @cadastro_com_falha
    Esquema do Cenário: Realizar login com falha
      Quando preencher os campos com tipo de usuário "<tipo_usuario>"
      Então deverá aparecer a mensagem "<mensagem>"
      Exemplos:
      | tipo_usuario        | mensagem                        |
      | senha_em_branco     | Password is required.           |
      | usuario_existente   | This username already exists.   |
