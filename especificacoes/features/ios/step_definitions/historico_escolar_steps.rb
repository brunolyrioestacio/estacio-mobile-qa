############## Dado #################
Dado(/^que estou na tela de historico escolar$/) do
  @page_historico = page(HistoricoEscolarScreen).await(timeout: 5)
end

################### Quando ################

############# Entao #############
Então(/^devo ver o CR do aluno$/) do
  @page_historico.cr_is_on_page?
end
