# language: pt
Funcionalidade: Login
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno
  @tuto
  Cenário: Vizualização de OnBoarding
    Dado que estou na tela de tutorial
    E o pulei
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Então devo interagir com o OnBoarding

  Cenário: Logout
  Dado que estou na tela inicial
  E toquei no botão Outras Funções
  E toquei no botão Sair
  Então devo estar na tela de Login
