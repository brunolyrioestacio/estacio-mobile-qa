# language: pt
Funcionalidade: Histórico(Somente Android)
Através dessa Funcionalidade é possível verificar o histórico escolar do aluno com o CR e as notas de cada matéria

  Contexto: Login
    Dado que estou na tela de Login


  Cenário: Visualização de Histórico Escolar
    Dado que realizei o processo de login usando uma matrícula "comum" do período vigente
    Quando tocar no menu lateral
    E tocar no botão de histórico escolar
    Dado que estou na tela de historico escolar
    Então devo ver o CR geral do aluno

  @bug
  @reinstall
  Cenário: Visualização de Histórico Escolar - Bug do CR em branco
    Dado que realizei o processo de login usando uma matrícula "com CR em branco em algum dos períodos"
    Quando tocar no menu lateral
    E tocar no botão de histórico escolar
    Dado que estou na tela de historico escolar
    Quando navegar até um período específico
    Então devo ver o CR de um período específico do aluno
