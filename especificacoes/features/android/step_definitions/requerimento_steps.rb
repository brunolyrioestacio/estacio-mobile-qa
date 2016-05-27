######### DADO #########
Dado(/^que estou na tela de Requerimentos$/) do
  @page_requerimentos = page(RequerimentosScreen).await(timeout: 5)
end

######### QUANDO #########
Quando(/^tocar no botão de criação de Requerimento$/) do
  @page_requerimentos.touch_new_requirement_button
end

Quando(/^tocar no botão flutuante de Requerimento$/) do
  @page_requerimentos.touch_new_requirement_float_button
end

Quando(/^tocar no botão flutuante de Ouvidoria$/) do
  @page_requerimentos.touch_new_ombudsman_float_button
end

Quando(/^tocar no botão flutuante de Reclamação$/) do
  @page_requerimentos.touch_new_complaint_float_button
end

Quando(/^escolher uma categoria$/) do
  @page_requerimentos.choose_categoty
end

Quando(/^escolher um tipo de ouvidoria$/) do
  @page_requerimentos.choose_ombudsman_type
end

Quando(/^escolher um tipo de reclamação$/) do
  @page_requerimentos.choose_complaint_type
end

Quando(/^um tipo de requerimento$/) do
  @page_requerimentos.choose_requirement_type
end

Quando(/^tocar em próximo para validar as informações do requerimento escolhido$/) do
  @page_requerimentos.touch_next_button
  @page_requerimentos.validate_requirements_information_is_on_page
end

Quando(/^tocar em próximo para validar as informações do tipo de ouvidoria escolhida$/) do
  @page_requerimentos.touch_next_button
  @page_requerimentos.validate_ombudsman_information_is_on_page
end

Quando(/^tocar em próximo para validar as informações do tipo de reclamação escolhida$/) do
  @page_requerimentos.touch_next_button
  @page_requerimentos.validate_complaint_information_is_on_page
end

Quando(/^tocar em próximo novamente$/) do
  @page_requerimentos.touch_next_button
end

Quando(/^preencher o campo de observação com informações sobre o requerimento$/) do
  @page_requerimentos.fill_obsersation_field
end

Quando(/^preencher o campo de observação com informações sobre a ouvidoria$/) do
  @page_requerimentos.fill_obsersation_field
end

Quando(/^preencher o campo de observação com informações sobre a reclamação$/) do
  @page_requerimentos.fill_obsersation_field
end

Quando(/^tocar em finalizar para abrir o requerimento$/) do
  @page_requerimentos.touch_finish_requirement_button
end

Quando(/^tocar em finalizar para abrir o requerimento de ouvidoria$/) do
  @page_requerimentos.touch_finish_ombudsman_button
end

Quando(/^tocar em finalizar para abrir o requerimento de reclamação$/) do
  @page_requerimentos.touch_finish_complaint_button
end

######### ENTAO #########
Então(/^devo ver uma mensagem sobre a falta de requerimentos existentes abertos ou concluídos$/) do
  @page_requerimentos.validate_no_requeriments_message
end

Então(/^devo ver uma lista de requerimentos existentes abertos ou concluídos$/) do
  @page_requerimentos.validate_requirements_is_on_page
end

Então(/^devo ver uma mensagem de confirmação da criação de Requerimento$/) do
  @page_requerimentos.validate_confirmation_message_is_on_page
end

Então(/^devo ver uma mensagem de confirmação da criação de Ouvidoria$/) do
  @page_requerimentos.validate_ombudsman_confirmation_message_is_on_page
end

Então(/^devo ver uma mensagem de confirmação da criação de Reclamação$/) do
  @page_requerimentos.validate_complaint_confirmation_message_is_on_page
end
