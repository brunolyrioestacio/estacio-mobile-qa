######### DADO #########
Dado(/^tenho 3 opções de avaliação$/) do
  @page_atendimento.validate_review_options
end
Dado(/^que estou na tela de avaliação de atendimento$/) do
  @page_atendimento.validate_review_screen_is_on_page
end
Dado(/^que estou na tela de Atendimento Agendado$/) do
  @page_atendimento = page(AtendimentoAgendadoScreen).await(timeout: 5)
end
######### QUANDO #########
Quando(/^tocar na opção ruim$/) do
  @page_atendimento.touch_bad_option
end
Quando(/^tocar no botão de avaliar atendimento$/) do
  @page_atendimento.touch_review_button
end
Quando(/^tocar no botão de criação de agendamento$/) do
  @page_atendimento.touch_new_service_button
end
Quando(/^escolher uma categoria, tipo e motivo de agendamento$/) do
  @page_atendimento.choose_category
  @page_atendimento.choose_type
  @page_atendimento.choose_cause
end
Quando(/^escolher a mesma categoria, tipo e motivo de agendamento de um agendamento existente$/) do
  @page_atendimento.choose_existing_category_type_cause
end
Quando(/^tocar em próximo$/) do
  @page_atendimento.touch_next_button
end
Quando(/^selecionar o horário disponível$/) do
  @page_atendimento.touch_available_hour_button
end
Quando(/^ver os dados previamente selecionados para o agendamento$/) do
  @page_atendimento.validate_choosen_informations_is_on_page
end
Quando(/^preencher o campo de observação$/) do
  @page_atendimento.fill_observation_field
end
Quando(/^tocar no botão de confirmação$/) do
  @page_atendimento.touch_confirmation_button
end
Quando(/^tocar no botão de confirmação de cancelamento$/) do
  @page_atendimento.touch_cancel_confirmation_button
end
Quando(/^tocar no botão de detalhes de um agendamento em aberto$/) do
  @page_atendimento.touch_scheduled_service_detail_button
end

Quando(/^tocar no botão cancelar$/) do
  @page_atendimento.touch_cancel_button
end
Quando(/^tocar no botão de reagendamento$/) do
  @page_atendimento.touch_reschedule_button
end

######### ENTAO #########
Então(/^devo ver todos os motivos relacionados a avaliação ruim$/) do
  @page_atendimento.validate_bad_option_choose_reasons
end
Então(/^devo visualizar uma mensagem de confirmação do agendamento$/) do
  @page_atendimento.validate_confirmation_message_is_on_page
end

Então(/^devo ver uma mensagem de confirmação de cancelamento do atendimento$/) do
  @page_atendimento.validate_cancel_confirmation_message_is_on_page
end

Então(/^devo visualizar uma mensagem de aviso sobre a existencia de um atendimento com o mesmo assunto$/) do
  @page_atendimento.validate_existing_service_message_is_on_page
end

Então(/^devo vizualizar uma mensagem de aviso sobre o limite de atendimentos em aberto$/) do
  @page_atendimento.validate_schedule_limite_message_is_on_page
end
