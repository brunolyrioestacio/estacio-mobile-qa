# language: pt
Funcionalidade: Home
Com essa funcionalidade é possível validar os banners da tela principal

Contexto: Login
  Dado que estou logado

Cenário: Vizualização da Carteira Digital do Estudante
  Dado que estou na tela inicial
  E toquei na matricula
  E estou na tela da Carteira Digital do Estudante
  Então devo ver meus dados pessoais
