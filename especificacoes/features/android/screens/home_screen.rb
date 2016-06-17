class HomeScreen < AndroidScreenBase
  # Identificador da tela

  trait(:trait)                   { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)           { 'home_view' }
  element(:sair_button)           { 'log_out' }
  element(:confirmar_sair_button) { 'custom_alert_second_btn' }
  element(:banner)                { 'carousel_view_pager' }
  element(:matricula_button)      { 'registration_holder' }
  element(:manual_button)         { 'Manual do Aluno' }
  element(:notas_button)          { 'Notas' }
  element(:horarios_button)       { "Quadro de\n Horários" }
  element(:frequencia_button)     { 'Frequência' }
  element(:atendimento_button)    { "Atendimento \nAgendado" }
  element(:requirement_button)    { 'open_requirement' }
  element(:notification_button)   { 'notification_off' }
  element(:side_menu)             { 'Open navigation drawer' }
  element(:data_de_prova_button)  { "Data de\n Provas" }

  def touch_notifications_button
    sleep 4
    touch("* marked:'#{notification_button}'")
  end

  def touch_registration
    sleep 3
    touch("* marked:'#{matricula_button}'")
  end

  def touch_side_menu
    touch("* marked:'#{side_menu}'")
  end

  def send_push(n)
    m = system("curl \"https://manage.pushio.com/api/v1/notify_app/ya0abMIQOg/TyGQBdqBpY7rmyb9zHog\" -d 'payload={\"message\":\"Test QA #{n}\"}&audience=broadcast'")
  end

  def tocar_botao_sair
    touch("* marked:'#{sair_button}'")
  end

  def tocar_botao_requerimentos
    touch("* id:'#{requirement_button}'")
  end

  def tocar_botao_frequencia
    touch("* marked:'#{frequencia_button}'")
  end

  def tocar_botao_notas_aluno
    touch("* marked:'#{notas_button}'")
  end

  def tocar_botao_quadro_de_horarios
    touch("* marked:'#{horarios_button}'")
  end

  def tocar_botao_atendimento_agendado
    touch("* marked:'#{atendimento_button}'")
  end

  def tocar_botao_confirmar_sair
    touch("* marked:'#{confirmar_sair_button}'")
  end

  def tocar_banner
    touch("* marked:'#{banner}'")
  end

  def tocar_matricula
    touch("* id:'#{matricula_button}'")
  end

  def tocar_botao_manual_aluno
    drag_until_element_is_visible(:down, manual_button, nil, 5)
    touch("* marked:'#{manual_button}'")
  end

  def validate_student_manual_is_on_page
    is_on_page? 'Manual do Aluno'
  end

  def tocar_botao_data_de_prova
    touch("* marked:'#{data_de_prova_button}'")
  end

  def alerta_logout_is_visible?
    is_on_page? 'Deseja mesmo sair?'
  end
end
