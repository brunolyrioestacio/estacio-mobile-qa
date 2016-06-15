######### DADO #########
Dado(/^que estou na tela de Atendimento Agendado$/) do
  @page_atendimento = page(AtendimentoAgendadoScreen).await(timeout: 5)
end
######### QUANDO #########
Quando(/^tocar no botão de criação de agendamento$/) do
  @page_atendimento.touch_new_service_button
end
######### ENTAO #########

Então(/^devo vizualizar uma mensagem de aviso sobre o limite de atendimentos em aberto$/) do
  @page_atendimento.validate_schedule_limite_message_is_on_page
end
