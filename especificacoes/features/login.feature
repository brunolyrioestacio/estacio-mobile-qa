# language: pt
Funcionalidade: Login
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno

  Cenários: Tratamento de exceção do não preenchimento dos campos de matrícula e senha
    Dado que estou na tela de Login
    E não preenchi o campo de matrícula
    E não preenchi o campo de senha
    Então o botão de login deve estar desabilitado

  Cenário: Tratamento de exceção do não preenchimento do campo de matrícula
    Dado que estou na tela de Login
    E não preenchi o campo de matrícula
    E preenchi o campo de senha
    Então o botão de login deve estar desabilitado

  Cenário: Tratamento de exceção do não preenchimento do campo de senha
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E não preenchi o campo de senha
    Então o botão de login deve estar desabilitado

  Cenário: Tratamento de exceção do preenchimento do campo de matrícula e senha incorretos
    Dado que estou na tela de Login
    E preenchi o campo de matrícula incorretamente
    E preenchi o campo de senha incorretamente
    Quando tocar no botão de login
    Então devo ver uma mensagem de erro

  Cenário: Tratamento de exceção de login por um usuário não aluno
    Dado que estou na tela de Login
    E tentei usar uma matrícula de um usuário que não é aluno
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver uma mensagem de aviso de aplicativo exclusivo para alunos

  Cenário: Tratamento de exceção de usuário não autorizado
    Dado que estou na tela de Login
    E preenchi o campo de matrícula com um usuário não autorizado
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver uma mensagem de usuário não autorizado

  Cenário: Login
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver a tela inicial
