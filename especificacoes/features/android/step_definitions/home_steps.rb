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
Quando(/^tocar no botão de atendimento agendado$/) do
  @pageHome.tocar_botao_atendimento_agendado
end
Quando(/^tocar no botão de Requerimentos$/) do
  @pageHome.tocar_botao_requerimentos
end
###########E############
Quando(/^toquei no botão de Manual do Aluno$/) do
  @pageHome.tocar_botao_manual_aluno
end
Quando(/^tocar no botão Sair$/) do
  @pageHome.tocar_botao_sair
end
######### ENTAO #########

Então (/^devo vizualizar o Manual do aluno$/) do
  @pageHome.is_on_page? 'Manual do Aluno'
end
