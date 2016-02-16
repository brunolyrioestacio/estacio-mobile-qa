# language: pt
Funcionalidade: Home
Através dessa funcionalidade é possível validar os banners da tela

Contexto: Login
  Dado que estou logado

@banner
Cenário: Validação dos banners
  Dado que estou na tela inicial
  E toquei no banner
  Então devo ver um alerta de redirecionamento para uma página externa
