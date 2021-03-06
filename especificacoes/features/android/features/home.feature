# language: pt
Funcionalidade: Home(Somente Android)
Através dessa funcionalidade é possível ter acesso aos banners e aos atalhos para outras funcionalidades do aplicativo

Contexto: Login
  Dado que estou logado

@banner
Cenário: Validação dos banners
  Dado que estou na tela inicial
  E toquei no banner
  Então devo ver um alerta de redirecionamento para uma página externa

@manual
Cenário: Vizualização do Manual do Aluno
  Dado que estou na tela inicial
  E toquei no botão de Manual do Aluno
  Então devo vizualizar o Manual do aluno

@carteirinha
Cenário: Vizualização da Carteira Digital do Estudante
  Dado que estou na tela inicial
  Quando tocar no menu lateral
  E tocar na matricula
  Então devo estar na tela da Carteira Digital do Estudante
  E devo ver meus dados pessoais
