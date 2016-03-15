# language: pt
Funcionalidade: Atendimento Agendado
  ##

  Contexto:
    Dado que estou na tela de Login

  Cenário: Novo agendamento
    Dado que realizei o processo de login usando uma matrícula "sem pendencias de atendimento" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    E escolher uma categoria, tipo e e movito de agendamento
    E clicar em próximo
    E selecionar o horário disponível
    E estou vendo os dados previamente selecionados para o agendamento
    E preenchi o campo de observação
    E cliquei no botão de confirmação
    Então devo visualizar uma mensagem de confirmação do agendamento
