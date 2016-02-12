# language: pt
Funcionalidade: Home
Através dessa funcionalidade é possível validar os banners da tela

@banner
Cenário: Login
  Dado que estou na tela de Login
  E preenchi o campo de matrícula
  E preenchi o campo de senha
  Quando tocar no botão de login
  Então devo ver a tela inicial

@banner
Cenário: Validação dos banners
  Dado que estou na tela inicial
  E toquei no banner
  Então devo ver um alerta de redirecionamento para uma página externa
