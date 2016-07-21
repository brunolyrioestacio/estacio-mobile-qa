# language: pt
Funcionalidade: Histórico Escolar(Somente Android)
  Através dessa funcionalidade é possível visualizar o histórico escolar do aluno,
contendo suas disciplinas inscritas, sua nota para cada uma delas, seu CR do período
e seu CR Geral.

  Contexto: Login
    Dado que estou na tela de Login

  Cenário: Visualização de Histórico Escolar
    Dado que realizei o processo de login usando uma matrícula "comum" do período vigente
    Quando navegar até a funcionalidade de Histórico Escolar
    Então devo ver o CR geral do aluno

  @bug
  @reinstall
  Cenário: Visualização de Histórico Escolar - Bug do CR em branco
    Dado que realizei o processo de login usando uma matrícula "com CR em branco em algum dos períodos"
    Quando navegar até a funcionalidade de Histórico Escolar
    E navegar até um período específico
    Então devo ver o CR de um período específico do aluno
