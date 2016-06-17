############ Dado #############
Dado(/^que estou na tela de data de prova$/) do
  @page_data = page(DataDeProvaScreen).await(timeout: 5)
end

Dado(/^toquei no botão de datas de provas online$/) do
  @page_data.tocar_botao_data_online
end

############ Então ###########
Então(/^devo vizualizar a data das provas das disciplinas presenciais$/) do
  @page_data.validate_presential_exam_date_is_on_page
end

Então(/^devo ver uma mensagem de não há provas agendadas$/) do
  @page_data.validate_no_exam_dates_exception_message
end

Então(/^devo vizualizar a data das provas das disciplinas online$/) do
  @page_data.validate_online_exam_date_is_on_page
end
