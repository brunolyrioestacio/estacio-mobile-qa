# language: pt
Funcionalidade: Login(Somente iOS)
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno

  @tuto
  Cenário: Vizualização de Tutorial
    Dado que estou na tela de tutorial
    Quando o pular
    Então devo estar na tela de Login

  @tuto
  Cenário: Logout
    Dado que estou logado
    Dado que estou na tela inicial
    E toquei no botão Outras Funções
    E toquei no botão Sair
    E vi um alerta com a mensagem de aviso sobre logout
    E toquei no botão Sair do alerta
    Então devo estar na tela de Login
