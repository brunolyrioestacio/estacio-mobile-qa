############## Dado #################
Dado(/^que estou na tela de historico escolar$/) do
  @page_historico = page(HistoricoEscolarScreen).await(timeout: 5)
end

################### Quando ################
Quando(/^navegar até um período específico$/) do
  @page_historico.navigate_at_semesters
end
############# Entao #############
Então(/^devo ver o CR geral do aluno$/) do
  @page_historico.cr_is_on_page?
end
Então(/^devo ver o CR de um período específico do aluno$/) do
  @page_historico.semester_cr_is_on_page?
end
