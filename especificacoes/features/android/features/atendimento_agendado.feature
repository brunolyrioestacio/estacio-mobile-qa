# language: pt
Funcionalidade: Atendimento Agendado
  Através desta funcionalidade é possível a realização do pré atendimento pelos próprios alunos

  Contexto:
    Dado que estou na tela de Login

  @reinstall
  @3
  Cenário: Novo atendimento - 3 atendimentos em aberto
    Dado que realizei o processo de login usando uma matrícula "com 3 atendimentos em aberto" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    Então devo vizualizar uma mensagem de aviso sobre o limite de atendimentos em aberto
