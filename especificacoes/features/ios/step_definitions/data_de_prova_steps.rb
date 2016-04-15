############ Dado #############
Dado(/^que estou na tela de data de prova$/) do
  @pageData = page(DataDeProvaScreen).await(timeout: 5)

end

Dado(/^toquei no botão de datas de provas online$/) do
  @pageData.tocar_botao_data_online
end

############ Quando ###########

Quando(/^tocar no botão de data de prova$/) do
  @pageHome.tocar_botao_data_de_prova
end

############ E ############

############ Então ###########
Então(/^devo vizualizar a data das provas das disciplinas presenciais$/) do
  @pageData.validate_presential_exam_date_is_on_page
end

Então(/^devo ver uma mensagem de não há provas agendadas$/) do
  @pageData.validate_no_exam_dates_exception_message
end

Então(/^devo vizualizar a data das provas das disciplinas online$/) do
  @pageData.validate_online_exam_date_is_on_page
end
