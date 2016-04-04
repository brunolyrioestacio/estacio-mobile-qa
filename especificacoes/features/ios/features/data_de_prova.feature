# language: pt
Funcionalidade: Data de Prova(Somente iOS)
Através dessa Funcionalidade é possível consultar a data das provas do Aluno

  Contexto: Login
    Dado que pulei o tutorial
    E estou na tela de Login

    @reinstall
  Cenário: Vizualizar a data das provas de um aluno presencial
    Dado que preenchi o campo de matrícula com uma matricula do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    E interagi com o OnBoarding
    E toquei no botão Outras Funções
    Quando tocar no botão de data de prova
    Dado que estou na tela de data de prova
    Então devo vizualizar a data das provas de Estrutura de dados

    @reinstall
  Cenário: Vizualização de data de prova - aluno sem provas
    Dado que preenchi o campo de matrícula com uma matricula do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    E interagi com o OnBoarding
    E toquei no botão Outras Funções
    Quando tocar no botão de data de prova
    Dado que estou na tela de data de prova
    Então devo ver uma mensagem de não há provas agendadas
