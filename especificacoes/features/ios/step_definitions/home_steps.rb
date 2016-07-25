######### QUANDO #########
Quando(/^tocar na mesma$/) do
  @pageHome.tocar_detalhe_banner
end

########### E ############
Quando(/^estou na tela de detalhes do banner$/) do
  @pageHome.estou_no_detalhe_do_banner
end

######### ENTAO #########
Quando(/^tocar no tile de adicionar um atalho$/) do
  @pageHome.tocar_adicionar_atalho
end
Quando(/^tocar no botão de manual do aluno$/) do
  @pageHome.tocar_botao_manual_aluno
end

Quando(/^tocar no botão de Notas$/) do
  @pageHome.tocar_botao_notas_aluno
end

Quando(/^tocar no botão de quadro de horarios$/) do
  @pageHome.tocar_botao_quadro
end

Quando(/^tocar no botão de Requerimentos$/) do
  @pageHome.tocar_botao_requerimento
end

Quando(/^tocar no botão de Frequência/) do
  @pageHome.tocar_botao_frequencia_aluno
end

Quando(/^tocar no botão de Atendimento Agendado$/) do
  @pageHome.tocar_botao_atendimento
end

Quando(/^tocar no botão de histórico escolar$/) do
  @pageHome.tocar_botao_historico_escolar
end

#############Então#########

Então(/^devo estar na tela inicial com o tile preenchido com manual do aluno$/) do
  @pageHome.is_on_page? "Manual do Aluno"
end

Então(/^devo vizualizar o manual do aluno$/) do
  @pageHome.is_on_page? 'Manual do Aluno'
end

Então(/^devo estar na tela inicial com o tile preenchido com Notas$/) do
  @pageHome.is_on_page? "Notas"
end

Então(/^devo estar na tela inicial com o tile preenchido com quadro de horarios$/) do
  @pageHome.is_on_page? "Quadro de Horários"
end

Então(/^devo estar na tela inicial com o tile preenchido com Requerimentos$/) do
  @pageHome.is_on_page? "Requerimento/Reclamação"
end

Então(/^devo estar na tela inicial com o tile preenchido com Atendimento Agendado$/) do
  @pageHome.is_on_page? "Atendimento Agendado"
end

Então(/^devo estar na tela inicial com o tile preenchido com Frequência$/) do
  @pageHome.is_on_page? "Frequência"
end
