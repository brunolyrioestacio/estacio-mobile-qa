# language: pt
Funcionalidade: Histórico(Somente iOS)
Através dessa Funcionalidade é possível verificar o histórico escolar do aluno com o CR e as notas de cada matéria

Contexto: Login
  Dado que pulei o tutorial
  E estou na tela de Login

  Cenário: Visualização de Histórico Escolar
    Dado que preenchi o campo de matrícula com uma matricula do período vigente
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    E interagi com o OnBoarding
    E toquei no botão Outras Funções
    Quando tocar no botão de histórico escolar
    Dado que estou na tela de historico escolar
    Então devo ver o CR do aluno
