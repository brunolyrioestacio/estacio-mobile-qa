# language: pt
Funcionalidade: Frequência
  Atravé
  Contexto:
    Dado que estou na tela de Login

  @presencial
  Cenário: Visualização da frequência de um aluno presencial
    Dado que realizei o processo de login usando uma matrícula "de graduação presencial" do período vigente
    Quando navegar até a funcionalidade de Frequência
    Então devo visualizar informações de porcentagem de faltas das disciplinas

  @ead
  @reinstall
  Cenário: Visualização da frequência de um aluno de graduação EAD
    Dado que realizei o processo de login usando uma matrícula "de graduação EAD" do período vigente
    Quando navegar até a funcionalidade de Frequência
    Então não devo visualizar informações de porcentagem de faltas

  @naoativo
  @reinstall
  Cenário: Visualização da frequência de um aluno não ativo
    Dado que realizei o processo de login usando uma matrícula "não ativa"
    Quando navegar até a funcionalidade de Frequência
    Então devo ver uma mensagem de aviso sobre a falta de frequências para o aluno

  @naomatriculado
  @reinstall
  Cenário: Visualização da frequência de um aluno não matriculado em disciplinas
    Dado que realizei o processo de login usando uma matrícula "que não possui disciplinas escolhidas"
    Quando navegar até a funcionalidade de Frequência
    Então devo ver uma mensagem de aviso sobre a falta de frequências para o aluno
