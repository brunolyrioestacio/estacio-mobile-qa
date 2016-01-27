# language: pt
Funcionalidade: Login
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno

  Cenários: Tratamento de exceção do não preenchimento dos campos de email e senha
    Dado que estou na tela de Login
    E não preenchi o campo de matrícula
    E não preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver uma mensagem de erro

  Cenário: Login
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver a tela inicial
