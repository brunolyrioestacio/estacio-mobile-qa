# language: pt
Funcionalidade: Home(Somente iOS)
Através dessa funcionalidade é possível ter acesso aos banners e aos atalhos para outras funcionalidades do aplicativo

Contexto: Login
  Dado que pulei o tutorial e estou logado

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
