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
    E interagir com o OnBoarding
    Então devo estar na tela inicial
