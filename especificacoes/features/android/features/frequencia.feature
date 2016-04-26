# language: pt
Funcionalidade: Frequência

  Contexto:
    Dado que estou na tela de Login

  @presencial
  Cenário: Visualização da frequência de um aluno presencial
    Dado que preenchi o campo de matrícula com uma matricula do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de Frequência
    Dado que estou na tela de frequência
    Então devo visualizar informações de porcentagem de faltas das disciplinas

  @ead
  @reinstall
  Cenário: Visualização da frequência de um aluno de graduação EAD
    Dado que preenchi o campo de matrícula com uma matricula de graduação EAD do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de Frequência
    Dado que estou na tela de frequência
    Então não devo visualizar informações de porcentagem de faltas

  @naoativo
  @reinstall
  Cenário: Visualização da frequência de um aluno não ativo
    Dado que preenchi o campo de matrícula com uma matricula não ativa
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de Frequência
    Dado que estou na tela de frequência
    Então devo ver uma mensagem de aviso sobre a falta de frequências para o aluno

  @naomatriculado
  @reinstall
  Cenário: Visualização da frequência de um aluno não matriculado em disciplinas
    Dado que preenchi o campo de matrícula com uma matricula que não possui disciplinas escolhidas
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de Frequência
    Dado que estou na tela de frequência
    Então devo ver uma mensagem de aviso sobre a falta de frequências para o aluno
