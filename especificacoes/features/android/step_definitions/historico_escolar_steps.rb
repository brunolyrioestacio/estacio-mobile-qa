################### Quando ################
Quando(/^navegar até um período específico$/) do
  @page_historico_escolar.navigate_at_semesters
end
############# Entao #############
Então(/^devo ver o CR geral do aluno$/) do
  @page_historico_escolar.cr_is_on_page?
end
Então(/^devo ver o CR de um período específico do aluno$/) do
  @page_historico_escolar.semester_cr_is_on_page?
end
