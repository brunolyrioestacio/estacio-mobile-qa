# language: pt
Funcionalidade: Login(Somente iOS)
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno

  @tuto
  Contexto: Pular Tutorial
    Dado que pulei o tutorial

  @logout
  @reinstall
  Cenário: Logout
    Dado que estou logado
    Dado que estou na tela inicial
    E toquei no botão Outras Funções
    E toquei no botão Sair
    E vi um alerta com a mensagem de aviso sobre logout
    E toquei no botão Sair do alerta
    Então devo estar na tela de Login

  @login
  @nobutton
  Cenário: Tratamento de exceção do não preenchimento dos campos de matrícula e senha
    Dado que estou na tela de Login
    E não preenchi o campo de matrícula
    E não preenchi o campo de senha
    Então o botão de login deve estar desabilitado

  @login
  @nobutton
  Cenário: Tratamento de exceção do não preenchimento do campo de matrícula
    Dado que estou na tela de Login
    E não preenchi o campo de matrícula
    E preenchi o campo de senha
    Então o botão de login deve estar desabilitado

  @login
  @nobutton
  Cenário: Tratamento de exceção do não preenchimento do campo de senha
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E não preenchi o campo de senha
    Então o botão de login deve estar desabilitado

  @login
  @error
  Cenário: Tratamento de exceção do preenchimento do campo de matrícula e senha incorretos
    Dado que estou na tela de Login
    E preenchi o campo de matrícula incorretamente
    E preenchi o campo de senha incorretamente
    Quando tocar no botão de login
    Então devo ver uma mensagem de erro

  @login
  @error
  Cenário: Tratamento de exceção de não aceitação do termo de acesso
    Dado que estou na tela de Login
    E preenchi o campo de matrícula com um usuário que não aceitou os termos
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver uma mensagem de aviso de termos não aceitos

  @login
  @error
  Cenário: Tratamento de exceção de usuário não aluno
    Dado que estou na tela de Login
    E tentei usar uma matrícula de um usuário que não é aluno
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver uma mensagem de aviso de aplicativo exclusivo para alunos

  @login
  @entra
  Cenário: Login
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver a tela inicial
