# language: pt
Funcionalidade: Login
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno e sair do aplicativo

@entra
Cenário: Login
  Dado que estou na tela de Login
  E preenchi o campo de matrícula
  E preenchi o campo de senha
  Quando tocar no botão de login
  Então devo ver a tela inicial

Cenário: Logout
  Dado que estou na tela inicial
  E toquei no botão Sair
  E vi um alerta com o aviso de logout
  E toquei no botão de Sair do alerta
  Então devo estar na tela de Login
