############ Quando #############
Quando(/^tocar no botão de datas de provas online$/) do
  @page_data.tocar_botao_data_online
end

############ Entao ###########
Então(/^devo vizualizar as datas das provas das disciplinas presenciais$/) do
  @page_data.validate_presential_exam_date_is_on_page
end

Então(/^devo ver uma mensagem sobre a não existencia de provas online marcadas$/) do
  @page_data.validate_no_exam_dates_exception_message
end

Então(/^devo ver uma mensagem sobre a não existencia de provas presenciais marcadas$/) do
  @page_data.validate_no_exam_dates_exception_message
end

Então(/^devo vizualizar as datas das provas das disciplinas online$/) do
  @page_data.validate_online_exam_date_is_on_page
end
