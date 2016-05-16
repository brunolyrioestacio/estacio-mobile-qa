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

Quando(/^escolher uma categoria$/) do
  @page_requerimentos.choose_categoty
end

Quando(/^um tipo de requerimento$/) do
  @page_requerimentos.choose_requirement_type
end

Quando(/^tocar em próximo para validar os dados escolhidos$/) do
  @page_requerimentos.touch_next_button
end

Quando(/^preencher o campo de observação com informações sobre o requerimento$/) do
  @page_requerimentos.fill_obsersation_field
end

Quando(/^tocar em finalizar$/) do
  @page_requerimentos.touch_finish_button
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
