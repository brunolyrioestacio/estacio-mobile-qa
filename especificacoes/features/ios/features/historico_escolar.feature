# language: pt
Funcionalidade: Histórico(Somente iOS)
Através dessa Funcionalidade é possível verificar o histórico escolar do aluno com o CR e as notas de cada matéria

Contexto: Login
  Dado que pulei o tutorial
  E estou na tela de Login

  Cenário: Visualização de Histórico Escolar
    Dado que realizei o processo de login usando uma matrícula "comum" do período vigente
    E toquei no menu lateral
    Quando tocar no botão de histórico escolar
    Dado que estou na tela de historico escolar
    Então devo ver o CR do aluno

  @bug
  @reinstall
  Cenário: Visualização de Histórico Escolar - Bug do CR em branco
    Dado que realizei o processo de login usando uma matrícula "com CR em branco em algum dos períodos"
    E toquei no menu lateral
    Quando tocar no botão de histórico escolar
    Dado que estou na tela de historico escolar
    Então devo ver o CR do aluno
