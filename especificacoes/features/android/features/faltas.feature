# language: pt
Funcionalidade: Faltas

  Contexto:
    Dado que estou na tela de Login
  @presencial
  Cenário: Visualização das faltas de um aluno de presencial
    Dado que preenchi o campo de matrícula com uma matricula do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de faltas
    Dado que estou na tela de faltas
    Então devo visualizar informações de porcentagem de faltas das disciplinas

  @reinstall
  Cenário: Visualização das faltas de um aluno de graduação EAD
    Dado que preenchi o campo de matrícula com uma matricula de graduação EAD do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de faltas
    Dado que estou na tela de faltas
    Então não devo visualizar informações de porcentagem de faltas

  @reinstall
  Cenário: Visualização das faltas de um aluno não ativo
    Dado que preenchi o campo de matrícula com uma matricula não ativa
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de faltas
    Dado que estou na tela de faltas
    Então devo ver uma mensagem de aviso sobre a falta de frequencias para o aluno

  @reinstall
  Cenário: Visualização das faltas de um aluno não matriculado em disciplinas
    Dado que preenchi o campo de matrícula com uma matricula que não possui disciplinas escolhidas
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    Quando tocar no botão de faltas
    Dado que estou na tela de faltas
    Então devo ver uma mensagem de aviso sobre a falta de frequencias para o aluno
