# language: pt
Funcionalidade: Quadro De Horarios
Contexto:
  Dado que pulei o tutorial
  E estou na tela de Login

Cenário: Visualização de Quadro de Horario
  Dado que preenchi o campo de matrícula com uma matricula do período vigente
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  E interagi com o OnBoarding
  E toquei no botão Outras Funções
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo vizualizar o horario da disciplina de Modelagem de Sistemas

@reinstall
Cenário: Visualização de Quadro de Horários - Aluno sem disciplinas
  Dado que preenchi o campo de matrícula com uma matricula que não possui disciplinas escolhidas
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  E interagi com o OnBoarding
  E toquei no botão Outras Funções
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario

@naomatriculado
@reinstall
Cenário: Visualização de Notas - Aluno não matriculado
  Dado que preenchi o campo de matrícula com uma matricula não relacionada ao período vigente
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  E interagi com o OnBoarding
  E toquei no botão Outras Funções
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar matriculado em nenhuma disciplina
