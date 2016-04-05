############## Dado #################
Dado (/^que estou na tela de historico escolar$/) do
  @pageHistorico = page(HistoricoEscolarScreen).await(timeout:5)
end

################### Quando ################

############# Então #############
Então(/^devo ver o CR do aluno$/) do
  @pageHistorico.is_on_page? "CR Geral"
end
