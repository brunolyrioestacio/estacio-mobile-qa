# language: pt
Funcionalidade: Notas

Contexto: Login
  Dado que pulei o tutorial

  Cenário: Visualização de Notas
    Dado que estou na tela inicial
    E toquei no botão Outras Funções
    Quando tocar no botão de Notas
    Dado que estou na tela de Notas
    Então devo vizualizar as notas da disciplina de Estrutura de Dados

  Cenário: Visualização de Notas - Aluno sem notas
    Dado que estou na tela inicial
    E toquei no botão Outras Funções
    Quando tocar no botão de Notas
    Dado que estou na tela de Notas
    Então devo ver uma mensagem de aviso sobre a falta de notas lançadas

  Cenário: Visualização de Notas - Aluno não matriculado
    Dado que estou na tela inicial
    E toquei no botão Outras Funções
    Quando tocar no botão de Notas
    Dado que estou na tela de Notas
    Então devo ver uma mensagem de aviso sobre a falta de notas lançadas devido ao aluno não estar matriculado
