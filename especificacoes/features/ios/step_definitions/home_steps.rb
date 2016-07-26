######### QUANDO #########
Quando(/^tocar na mesma$/) do
  @pageHome.tocar_detalhe_banner
end

########### E ############
Quando(/^estou na tela de detalhes do banner$/) do
  @pageHome.estou_no_detalhe_do_banner
end

######### ENTAO #########
Quando(/^tocar em uma das opções disponíveis para adicionar um atalho$/) do
  @pageHome.tocar_adicionar_atalho
end

Quando(/^selecionar (.*?)$/) do |nome_funcionalide|
  case nome_funcionalide
  when 'Manual do aluno'
    @pageHome.tocar_botao_manual_aluno
  when 'Notas de provas'
    @pageHome.tocar_botao_notas_aluno
  when 'Quadro de horarios'
    @pageHome.tocar_botao_quadro
  when 'Requerimentos'
    @pageHome.tocar_botao_requerimento
  when 'Atendimento agendado'
    @pageHome.tocar_botao_atendimento
  when 'Frequência'
    @pageHome.tocar_botao_frequencia_aluno
  else
    false
  end
end

############# Entao #########

Então(/^devo estar na tela inicial com um atalho para (.*?)$/) do |nome_funcionalide|
  case nome_funcionalide
  when 'Manual do aluno'
    @pageHome.is_on_page? 'Manual do aluno'
  when 'Notas de Provas'
    @pageHome.is_on_page? 'Notas de provas'
  when 'Quadro de Horários'
    @pageHome.is_on_page? 'Quadro de Horários'
  when 'Requerimentos'
    @pageHome.is_on_page? 'Requerimentos'
  when 'Atendimento agendado'
    @pageHome.is_on_page? 'Atendimento agendado'
  when 'Frequência'
    @pageHome.is_on_page? 'Frequência'
  else
    raise "Não foi possível encontrar a funcionalidade de #{nome_funcionalide} nessa tela."
  end
end

Então(/^devo vizualizar o manual do aluno$/) do
  @pageHome.is_on_page? 'Manual do Aluno'
end
