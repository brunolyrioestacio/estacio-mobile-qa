# language: pt
Funcionalidade: Atendimento Agendado
  Através desta funcionalidade é possível a realização do pré atendimento pelos próprios alunos

  Contexto:
    Dado que estou na tela de Login

  @novo @xpto
  Cenário: Novo atendimento
    Dado que realizei o processo de login usando uma matrícula "sem pendencias de atendimento" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    E escolher uma categoria, tipo e motivo de agendamento
    E tocar em próximo
    E selecionar o horário disponível
    E tocar em próximo
    E ver os dados previamente selecionados para o agendamento
    E preencher o campo de observação
    E tocar no botão de confirmação
    Então devo visualizar uma mensagem de confirmação do agendamento

  @reinstall
  @mesmo @xpto
  Cenário: Novo atendimento - Atendimento com o mesmo assunto
    Dado que realizei o processo de login usando uma matrícula "sem pendencias de atendimento" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    E escolher a mesma categoria, tipo e motivo de agendamento de um agendamento existente
    E tocar em próximo
    E selecionar o horário disponível
    E tocar em próximo
    E ver os dados previamente selecionados para o agendamento
    E preencher o campo de observação
    E tocar no botão de confirmação
    Então devo visualizar uma mensagem de aviso sobre a existencia de um atendimento com o mesmo assunto

  Cenário: Reagendamento
    Dado que realizei o processo de login usando uma matrícula "sem pendencias de atendimento" do período vigente
    Quando tocar no botão de atendimento agendado
    Quando tocar no botão de detalhes de um agendamento em aberto
    E tocar no botão de reagendamento
    E selecionar o horário disponível
    E tocar em próximo
    E ver os dados previamente selecionados para o agendamento
    E preencher o campo de observação
    E tocar no botão de confirmação
    Então devo visualizar uma mensagem de confirmação do agendamento

  @reinstall
  @cancel @xpto
  Cenário: Cancelar atendimento
    Dado que realizei o processo de login usando uma matrícula "sem pendencias de atendimento" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de detalhes de um agendamento em aberto
    E tocar no botão cancelar
    E tocar no botão de confirmação de cancelamento
    Então devo ver uma mensagem de confirmação de cancelamento do atendimento

  @reinstall
  Cenário: Novo atendimento - 3 atendimentos em aberto
    Dado que realizei o processo de login usando uma matrícula "com 3 atendimentos abertos" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de criação de agendamento
    Então devo ver uma mensagem de aviso sobre o limite de agendamentos em aberto

  @reinstall
  Cenário: Avaliar atendimento
    Dado que realizei o processo de login usando uma matrícula "agendamentos a serem avaliados" do período vigente
    Quando tocar no botão de atendimento agendado
    Dado que estou na tela de Atendimento Agendado
    Quando tocar no botão de avaliar atendimento
    Dado que estou na tela de avaliação de atendimento
    E tenho 3 opções de avaliação
    Quando tocar na opção ruim
    Então devo ver todos os motivos relacionados a avaliação ruim
