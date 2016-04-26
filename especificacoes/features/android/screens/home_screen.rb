class HomeScreen < AndroidScreenBase
  # Identificador da tela

  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)           { 'home_view' }
  element(:sair_button)           {'log_out'}
  element(:confirmar_sair_button) {'custom_alert_second_btn'}
  element(:banner)                {'carousel_view_pager'}
  element(:matricula_button)      {'home_student_card_info'}
  element(:manual_button)         {'guide_of_student_item'}
  element(:notas_button)          {'Notas'}
  element(:horarios_button)       {"Quadro de\n Horários"}
  element(:frequencia_button)         {'Frequência'}
  element(:atendimento_button)    {"Atendimento \nAgendado"}
  element(:requirement_button)    {'open_requirement'}

  action(:tocar_botao_sair) {
    touch("* marked:'#{sair_button}'")
  }
  action(:tocar_botao_requerimentos) {
    touch("* id:'#{requirement_button}'")
  }
  action(:tocar_botao_frequencia){
    touch("* marked:'#{frequencia_button}'")
  }
  action(:tocar_botao_notas_aluno){
    touch("* marked:'#{notas_button}'")
  }

  action(:tocar_botao_quadro_de_horarios){
    touch("* marked:'#{horarios_button}'")
  }

  action(:tocar_botao_atendimento_agendado){
    touch("* marked:'#{atendimento_button}'")
  }

  action(:tocar_botao_confirmar_sair){
    touch("* marked:'#{confirmar_sair_button}'")
  }

  action(:tocar_banner) {
    touch("* marked:'#{banner}'")
  }
  action(:tocar_matricula){
    touch("* id:'#{matricula_button}'")
  }
  action(:tocar_botao_manual_aluno){
    touch("* id:'#{manual_button}'")
  }

  def alerta_logout_is_visible?
    is_on_page? "Deseja mesmo sair?"
  end

end
