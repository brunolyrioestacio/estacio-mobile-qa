######### DADO #########

######### QUANDO #########
Quando(/^tocar em uma das opções disponíveis para adicionar um atalho$/) do
  @pageHome.drag_to(:down)
  @pageHome.tocar_adicionar_atalho
end

Quando(/^selecionar (.*?)$/) do |nome_funcionalide|
  case nome_funcionalide
  when 'Manual do aluno'
    @pageHome.tocar_botao_manual_aluno
  when 'Notas de provas'
    @pageHome.tocar_botao_notas_aluno
  when 'Quadro de horários'
    @pageHome.tocar_botao_quadro_de_horarios
  when 'Requerimentos'
    @pageHome.tocar_botao_requerimentos
  when 'Atendimento agendado'
    @pageHome.tocar_botao_atendimento_agendado
  when 'Frequência'
    @pageHome.tocar_botao_frequencia_aluno
  when 'Agendamento de prova'
    @pageHome.tocar_botao_agendamento_de_prova
  when 'Boletos'
    @pageHome.tocar_botao_boletos
  when 'Histórico escolar'
    @pageHome.tocar_botao_historico_escolar
  else
    raise "Não foi possível encontrar a funcionalidade de #{nome_funcionalide} nessa tela."
  end
end

Então(/^devo estar na tela inicial com um atalho para (.*?)$/) do |nome_funcionalide|
  @pageHome.drag_to(:down)
  case nome_funcionalide
  when 'Manual do aluno'
    @pageHome.is_on_page? 'Manual do aluno'
  when 'Notas de provas'
    @pageHome.is_on_page? 'Notas de provas'
  when 'Quadro de horários'
    @pageHome.is_on_page? 'Quadro de horários'
  when 'Requerimentos'
    @pageHome.is_on_page? 'Requerimentos'
  when 'Atendimento agendado'
    @pageHome.is_on_page? 'Atendimento agendado'
  when 'Frequência'
    @pageHome.is_on_page? 'Frequência'
  when 'Agendamento de prova'
    @pageHome.is_on_page? 'Agendamento de prova'
  when 'Boletos'
    @pageHome.is_on_page? 'Boletos'
  when 'Histórico escolar'
    @pageHome.is_on_page? 'Histórico escolar'
  else
    raise "Não foi possível encontrar a funcionalidade de #{nome_funcionalide} nessa tela."
  end
end

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
Então(/^devo vizualizar o manual do aluno$/) do
  @pageHome.validate_student_manual_is_on_page
end
