# language: pt
Funcionalidade: Login(Somente Android)
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno e sair do aplicativo

@login
Cenário: Logout
  Dado que estou logado
  Quando tocar no menu lateral
  E tocar no botão Sair
  E ver um alerta com o aviso de logout
  E confirmar o logout
  Então devo estar na tela de Login
