# language: pt
Funcionalidade: Notas

Contexto: Login
  Dado que pulei o tutorial
  E estou na tela de Login

  Cenário: Visualização de Notas
    Dado que preenchi o campo de matrícula com uma matricula do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    E interagi com o OnBoarding
    E toquei no menu lateral
    Quando tocar no botão de Notas
    Dado que estou na tela de Notas
    Então devo vizualizar as notas da disciplina de Estrutura de Dados

  @reinstall
  Cenário: Visualização de Notas - Aluno sem notas
    Dado que preenchi o campo de matrícula com uma matricula que não possui notas lançadas
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    E interagi com o OnBoarding
    E toquei no menu lateral
    Quando tocar no botão de Notas
    Dado que estou na tela de Notas
    Então devo ver uma mensagem de aviso sobre a falta de notas lançadas

  @reinstall
  Cenário: Visualização de Notas - Aluno não matriculado
    Dado que preenchi o campo de matrícula com uma matricula não relacionada ao período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    E interagi com o OnBoarding
    E toquei no menu lateral
    Quando tocar no botão de Notas
    Dado que estou na tela de Notas
    Então devo ver uma mensagem de aviso sobre a falta de notas lançadas devido ao aluno não estar matriculado
