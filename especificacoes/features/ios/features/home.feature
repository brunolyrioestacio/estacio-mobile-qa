# language: pt
Funcionalidade: Home(Somente iOS)
  Através dessa funcionalidade é possível ter acesso aos banners da Estácio, como também
é possível adicionar atalhos paras as funcionalidades mais acessadas pelo aluno no app.
Juntamente com o acesso a home, é possível acessar a Carteirinha Digital do Aluno, o Manual
do Aluno e também as outras funcionalidades do app.

Contexto: Login
  Dado que pulei o tutorial e estou logado

Cenário: Vizualização de OnBoarding
  Dado que estou na tela inicial
  Então devo interagir com o OnBoarding

Cenário: Validação do banner
  Dado que estou na tela inicial
  E toquei no banner
  Então devo ver um alerta de redirecionamento para uma página externa

Cenário: Vizualização da Carteira Digital do Estudante
  Dado que estou na tela inicial
  Quando navegar até a funcionalidade de Carteirinha de Estudante
  Então devo ver meus dados pessoais

Cenário: Preenchimento de atalho com Manual do Aluno
  Dado que estou na tela inicial
  Quando tocar em uma das opções disponíveis para adicionar um atalho
  E selecionar Manual do aluno
  Então devo estar na tela inicial com um atalho para Manual do aluno

Cenário: Vizualização do Manual do Aluno
  Dado que estou na tela inicial
  Quando navegar até a funcionalidade de Manual do Aluno
  Então devo vizualizar o manual do aluno

 Cenário: Preenchimento de atalho com Notas de Provas
  Dado que estou na tela inicial
  Quando tocar em uma das opções disponíveis para adicionar um atalho
  E selecionar Notas de provas
  Então devo estar na tela inicial com um atalho para Notas de provas

 Cenário: Preenchimento de atalho com Quadro de Horarios
  Dado que estou na tela inicial
  Quando tocar em uma das opções disponíveis para adicionar um atalho
  E selecionar Quadro de horarios
  Então devo estar na tela inicial com um atalho para Quadro de horarios

Cenário: Preenchimento de atalho com Requerimentos
  Dado que estou na tela inicial
  Quando tocar em uma das opções disponíveis para adicionar um atalho
  E selecionar Requerimentos
  Então devo estar na tela inicial com um atalho para Requerimentos

Cenário: Preenchimento de atalho com Atendimento Agendado
  Dado que estou na tela inicial
  Quando tocar em uma das opções disponíveis para adicionar um atalho
  E selecionar Atendimento agendado
  Então devo estar na tela inicial com um atalho para Atendimento agendado

Cenário: Preenchimento de atalho com Frequência
  Dado que estou na tela inicial
  Quando tocar em uma das opções disponíveis para adicionar um atalho
  E selecionar Frequência
  Então devo estar na tela inicial com um atalho para Frequência
