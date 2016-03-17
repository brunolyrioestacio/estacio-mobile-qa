# language: pt
Funcionalidade: Atendimento Agendado
  ##

  Contexto:
    Dado que estou na tela de Login

  Cenário: Novo atendimento
    Dado que realizei o processo de login usando uma matrícula "sem pendencias de atendimento" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    E escolher uma categoria, tipo e movito de agendamento
    E clicar em próximo
    E selecionar o horário disponível
    E ver os dados previamente selecionados para o agendamento
    E preencher o campo de observação
    E clicar no botão de confirmação
    Então devo visualizar uma mensagem de confirmação do agendamento

  Cenário: Novo atendimento - Atendimento com o mesmo assunto
    Dado que realizei o processo de login usando uma matrícula "sem pendencias de atendimento" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    E escolher a mesma categoria, tipo e e movito de agendamento de um agendamento existente
    E clicar em próximo
    E selecionar o horário disponível
    E ver os dados previamente selecionados para o agendamento
    E preencher o campo de observação
    E clicar no botão de confirmação
    Então devo visualizar uma mensagem de aviso sobre a existencia de um atendimento com o mesmo assunto

  Cenário: Novo atendimento - 3 atendimentos em aberto
    Dado que realizei o processo de login usando uma matrícula "com 3 atendimentos abertos" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    Então devo ver uma mensagem de aviso sobre o limite de agendamentos em aberto
