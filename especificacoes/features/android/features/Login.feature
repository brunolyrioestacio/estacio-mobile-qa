# language: pt
Funcionalidade: Login(Somente Android)
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno e sair do aplicativo

@login
Cenário: Logout
  Dado que estou logado
  E toquei no botão Sair
  E vi um alerta com o aviso de logout
  E toquei no botão de Sair do alerta
  Então devo estar na tela de Login
