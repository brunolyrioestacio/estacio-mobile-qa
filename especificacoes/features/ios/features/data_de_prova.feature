# language: pt
Funcionalidade: Data de Prova(Somente iOS)
Através dessa Funcionalidade é possível consultar a data das provas do Aluno

  Contexto: Login
    Dado que pulei o tutorial
    E estou na tela de Login

  @reinstall
  Cenário: Vizualizar a data das provas de um aluno presencial
    Dado que realizei o processo de login usando uma matrícula "exclusivamente presencial" do período vigente
    E toquei no botão Outras Funções
    Quando tocar no botão de data de prova
    Dado que estou na tela de data de prova
    Então devo vizualizar a data das provas das disciplinas presenciais

  @reinstall
  Cenário: Vizualização de data de prova - aluno online
    Dado que realizei o processo de login usando uma matrícula "exclusivamente de EAD" do período vigente
    E toquei no botão Outras Funções
    Quando tocar no botão de data de prova
    Dado que estou na tela de data de prova
    E toquei no botão de datas de provas online
    Então devo vizualizar a data das provas das disciplinas online

  @reinstall
  Cenário: Vizualização de data de prova - aluno sem provas
    Dado que realizei o processo de login usando uma matrícula "que não possui provas marcadas" do período vigente
    E toquei no botão Outras Funções
    Quando tocar no botão de data de prova
    Dado que estou na tela de data de prova
    Então devo ver uma mensagem de não há provas agendadas
