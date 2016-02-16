# language: pt
Funcionalidade: Home(Somente iOS)
Com essa funcionalidade é possível validar os banners da tela principal

Contexto: Login
  Dado que estou logado

Cenário: Vizualização de OnBoarding
  Dado que estou na tela inicial
  Então devo interagir com o OnBoarding

@banner
Cenário: Validação do banner
  Dado que estou na tela inicial
  E toquei no banner
  E estou na tela de detalhes do banner
  Quando tocar na mesma
  Então devo ver um alerta de redirecionamento para uma página externa
