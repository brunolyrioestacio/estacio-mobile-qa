# language: pt
Funcionalidade: Home(Somente iOS)
Através dessa funcionalidade é possível ter acesso aos banners e aos atalhos para outras funcionalidades do aplicativo

Contexto: Login
  Dado que pulei o tutorial e estou logado

@manual
Cenário: Vizualização de OnBoarding
  Dado que estou na tela inicial
  Então devo interagir com o OnBoarding

@banner
Cenário: Validação do banner
  Dado que estou na tela inicial
  E toquei no banner
  E estou na tela de detalhes do banner
  Quando tocar na mesma
  Então devo ver um alerta de redirecionamento para uma página externa

@preencher @manual
Cenário: Preenchimento do Tile com Manual do Aluno
  Dado que estou na tela inicial
  Quando toquei no tile de adicionar um atalho
  E toquei no botão de manual do aluno
  Então devo estar na tela inicial com o tile preenchido com manual do aluno

@manual
Cenário: Vizualização do Manual do Aluno
  Dado que estou na tela inicial
  E toquei no botão Outras Funções
  E toquei no botão de manual do aluno
  Então devo vizualizar o manual do aluno
