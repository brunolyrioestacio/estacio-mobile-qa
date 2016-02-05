# language: pt
Funcionalidade: Home
Com essa funcionalidade é possível validar os banners da tela principal

@entra
Cenário: Login
  Dado que estou na tela de Login
  E preenchi o campo de matrícula
  E preenchi o campo de senha
  Quando tocar no botão de login
  Então devo ver a tela inicial

@banner
Cenário: Validação do banner
  Dado que estou na tela inicial
  E toquei no banner
  E estou na tela de detalhes do banner
  Quando tocar na mesma
  Então devo ver um alerta de redirecionamento para uma página externa
