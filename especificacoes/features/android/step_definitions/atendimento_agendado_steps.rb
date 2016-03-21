######### DADO #########
Dado(/^que estou na tela de Atendimento Agendado$/) do
  @pageAtendimento = page(AtendimentoAgendadoScreen).await(timeout:5)
end
######### QUANDO #########

Quando(/^tocar no botão de criação de agendamento$/) do
  @pageAtendimento.touch_new_service_button
end
Quando(/^escolher uma categoria, tipo e motivo de agendamento$/) do
  @pageAtendimento.choose_category
  @pageAtendimento.choose_type
  @pageAtendimento.choose_cause
end
Quando(/^escolher a mesma categoria, tipo e motivo de agendamento de um agendamento existente$/) do
  @pageAtendimento.choose_existing_category_type_cause
end
Quando(/^clicar em próximo$/) do
  @pageAtendimento.touch_next_button
end
Quando(/^selecionar o horário disponível$/) do
  @pageAtendimento.touch_available_hour_button
end
Quando(/^ver os dados previamente selecionados para o agendamento$/) do
  @pageAtendimento.validate_choosen_informations_is_on_page
end
Quando(/^preencher o campo de observação$/) do
  @pageAtendimento.fill_observation_field
end
Quando(/^clicar no botão de confirmação$/) do
  @pageAtendimento.touch_confirmation_button
end

######### ENTãO #########
Então(/^devo visualizar uma mensagem de confirmação do agendamento$/) do
  @pageAtendimento.validate_confirmation_message_is_on_page
end

Então(/^devo visualizar uma mensagem de aviso sobre a existencia de um atendimento com o mesmo assunto$/) do
  @pageAtendimento.validate_existing_service_message_is_on_page
end

Então(/^devo ver uma mensagem de aviso sobre o limite de agendamentos em aberto$/) do
  @pageAtendimento.validate_schedule_limite_message_is_on_page
end
