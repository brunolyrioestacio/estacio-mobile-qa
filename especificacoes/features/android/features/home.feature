# language: pt
Funcionalidade: Home(Somente Android)
Através dessa funcionalidade é possível ter acesso aos banners e aos atalhos para outras funcionalidades do aplicativo

Contexto: Login
  Dado que estou logado

@teste_manual
Cenário: Validação dos banners
  Dado que estou na tela inicial
  E toquei no banner
  Então devo ver um alerta de redirecionamento para uma página externa

Cenário: Vizualização do Manual do Aluno
  Dado que estou na tela inicial
  Quando navegar até a funcionalidade de Manual do Aluno
  Então devo vizualizar o manual do aluno

Cenário: Vizualização da Carteira Digital do Estudante
  Dado que estou na tela inicial
  Quando navegar até a funcionalidade de Carteirinha de Estudante
  Então devo ver meus dados pessoais
