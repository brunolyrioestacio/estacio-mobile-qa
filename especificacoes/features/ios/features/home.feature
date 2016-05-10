# language: pt
Funcionalidade: Home(Somente iOS)
Através dessa funcionalidade é possível ter acesso aos banners e aos atalhos para outras funcionalidades do aplicativo

Contexto: Login
  Dado que pulei o tutorial e estou logado

@home @preencher
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
  Quando tocar no tile de adicionar um atalho
  E tocar no botão de manual do aluno
  Então devo estar na tela inicial com o tile preenchido com manual do aluno

@manual
Cenário: Vizualização do Manual do Aluno
  Dado que estou na tela inicial
  E toquei no botão Outras Funções
  Quando tocar no botão de manual do aluno
  Então devo vizualizar o manual do aluno

@preencher @nota
Cenário: Preenchimento do Tile com Notas
  Dado que estou na tela inicial
  Quando tocar no tile de adicionar um atalho
  E tocar no botão de Notas
  Então devo estar na tela inicial com o tile preenchido com Notas

@preencher @quadro
Cenário: Preenchimento do Tile com Quadro de Horarios
  Dado que estou na tela inicial
  Quando tocar no tile de adicionar um atalho
  E tocar no botão de quadro de horarios
  Então devo estar na tela inicial com o tile preenchido com quadro de horarios

@preencher @req
Cenário: Preenchimento do Tile com Requerimentos
  Dado que estou na tela inicial
  Quando tocar no tile de adicionar um atalho
  E tocar no botão de Requerimentos
  Então devo estar na tela inicial com o tile preenchido com Requerimentos

@preencher @atendimento
Cenário: Preenchimento do Tile com Atendimento Agendado
  Dado que estou na tela inicial
  Quando tocar no tile de adicionar um atalho
  E tocar no botão de Atendimento Agendado
  Então devo estar na tela inicial com o tile preenchido com Atendimento Agendado

@preencher @freq
Cenário: Preenchimento do Tile com Frequência
  Dado que estou na tela inicial
  Quando tocar no tile de adicionar um atalho
  E tocar no botão de Frequência
  Então devo estar na tela inicial com o tile preenchido com Frequência
