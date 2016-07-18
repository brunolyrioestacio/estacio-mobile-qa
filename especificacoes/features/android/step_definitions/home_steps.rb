######### DADO #########

######### QUANDO #########
Quando(/^tocar no botão de Notas$/) do
  @pageHome.tocar_botao_notas_aluno
end
Quando(/^tocar no botão de quadro de horarios$/) do
  @pageHome.tocar_botao_quadro_de_horarios
end
Quando(/^tocar no botão de Frequência$/) do
  @pageHome.tocar_botao_frequencia
end
Quando(/^tocar no botão de Requerimentos$/) do
  @pageHome.tocar_botao_requerimentos
end
Quando(/^tocar no botão de histórico escolar$/) do
  @pageHome.touch_school_records_button
end
########### E ############
Quando(/^tocar no botão de Manual do Aluno$/) do
  @pageHome.tocar_botao_manual_aluno
end

######### ENTAO #########
Então(/^devo vizualizar o Manual do aluno$/) do
  @pageHome.validate_student_manual_is_on_page
end
