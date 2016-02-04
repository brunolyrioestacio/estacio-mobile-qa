# language: pt
Funcionalidade: Login
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno

  @nobutton
  Cenário: Tratamento de exceção do não preenchimento dos campos de matrícula e senha
    Dado que estou na tela de Login
    E não preenchi o campo de matrícula
    E não preenchi o campo de senha
    Então o botão de login deve estar desabilitado

  @nobutton
  Cenário: Tratamento de exceção do não preenchimento do campo de matrícula
    Dado que estou na tela de Login
    E não preenchi o campo de matrícula
    E preenchi o campo de senha
    Então o botão de login deve estar desabilitado

    @nobutton
  Cenário: Tratamento de exceção do não preenchimento do campo de senha
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E não preenchi o campo de senha
    Então o botão de login deve estar desabilitado

    @error
  Cenário: Tratamento de exceção do preenchimento do campo de matrícula e senha incorretos
    Dado que estou na tela de Login
    E preenchi o campo de matrícula incorretamente
    E preenchi o campo de senha incorretamente
    Quando tocar no botão de login
    Então devo ver uma mensagem de erro

    @error
  Cenário: Tratamento de exceção de não aceitação do termo de acesso
    Dado que estou na tela de Login
    E preenchi o campo de matrícula com um usuário que não aceitou os termos
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver uma mensagem de aviso de termos não aceitos

    @newerror
  Cenário: Tratamento de exceção de usuário não aluno
    Dado que estou na tela de Login
    E tentei usar uma matrícula de um usuário que não é aluno
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver uma mensagem de aviso de aplicativo exclusivo para alunos


    @entra
  Cenário: Login
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver a tela inicial
