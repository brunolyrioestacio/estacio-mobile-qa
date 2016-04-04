############ Dado #############
Dado(/^que estou na tela de data de prova$/) do
  @pageData = page(DataDeProvaScreen).await(timeout: 5)

end
############ Quando ###########

Quando(/^tocar no botão de data de prova$/) do
  @pageHome.tocar_botao_data_de_prova
end

############ E ############

############ Então ###########
Então(/^devo vizualizar a data das provas de Estrutura de dados$/) do
  @pageData.is_on_page? "ESTRUTURA DE DADOS"
end

Então(/^devo ver uma mensagem de não há provas agendadas$/) do
  @pageData.is_on_page? "Sem provas"
end
