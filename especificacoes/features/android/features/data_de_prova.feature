# language: pt
Funcionalidade: Datas De Provas (Somente Android)
  Através dessa Funcionalidade é possível consultar as datas das provas presenciais e online das disciplinas
que o aluno está matriculado.

  Contexto: Login
    Dado que estou na tela de Login

  @reinstall
  Cenário: Vizualizar a data das provas de um aluno presencial
    Dado que realizei o processo de login usando uma matrícula "com provas presenciais" do período vigente
    Quando navegar até a funcionalidade de Datas de provas
    Então devo vizualizar as datas das provas das disciplinas presenciais

  @reinstall
  Cenário: Vizualização de data de prova - aluno online
    Dado que realizei o processo de login usando uma matrícula "com provas online" do período vigente
    Quando navegar até a funcionalidade de Datas de provas
    E tocar no botão de datas de provas online
    Então devo vizualizar as datas das provas das disciplinas online

  @reinstall
  Cenário: Vizualização de data de prova - aluno sem provas presenciais
    Dado que realizei o processo de login usando uma matrícula "que não possui provas presenciais marcadas" do período vigente
    Quando navegar até a funcionalidade de Datas de provas
    Então devo ver uma mensagem sobre a não existencia de provas presenciais marcadas

  @reinstall
  Cenário: Vizualização de data de prova - aluno sem provas online
    Dado que realizei o processo de login usando uma matrícula "que não possui provas online marcadas" do período vigente
    Quando navegar até a funcionalidade de Datas de provas
    E tocar no botão de datas de provas online
    Então devo ver uma mensagem sobre a não existencia de provas online marcadas
