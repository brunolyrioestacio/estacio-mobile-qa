######### DADO #########
Dado(/^que estou na tela de Requerimentos$/) do
  @pageRequerimentos = page(RequerimentosScreen).await(timeout: 5)
end

######### QUANDO #########

######### ENTãO #########
Então(/^devo ver uma mensagem sobre a falta de requerimentos existentes abertos ou concluídos$/) do
  @pageRequerimentos.validate_no_requeriments_message
end

Então(/^devo ver uma lista de requerimentos existentes abertos ou concluídos$/) do
  @pageRequerimentos.validate_requirements_is_on_page
end
