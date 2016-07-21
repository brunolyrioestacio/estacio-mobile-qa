class HomeScreen < AndroidScreenBase
  # Identificador da tela

  trait(:trait)                      { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)              { 'home_view' }
  element(:logout_button)            { 'Sair' }
  element(:confirmar_sair_button)    { 'custom_alert_second_btn' }
  element(:banner)                   { 'carousel_view_pager' }
  element(:matricula_button)         { 'registration_holder' }
  element(:manual_button)            { 'Manual do Aluno' }
  element(:notas_button)             { 'Notas de provas' }
  element(:horarios_button)          { 'Quadro de horário' }
  element(:frequencia_button)        { 'Frequência' }
  element(:atendimento_button)       { 'Atendimento agendado' }
  element(:requirement_button)       { 'open_requirement' }
  element(:notification_button)      { 'notification_off' }
  element(:side_menu)                { 'Open navigation drawer' }
  element(:datas_de_provas_button)   { 'Datas de provas' }
  element(:school_records_button)    { 'Histórico Escolar' }
  element(:boletos_button)           { 'Boletos' }

  def navigate_to_timesheet
    touch_side_menu
    drag_until_element_is_visible(:down, horarios_button, nil, 5)
    touch("* marked:'#{horarios_button}'")
  end

  def navigate_to_school_records
    touch_side_menu
    drag_until_element_is_visible(:down, school_records_button, nil, 5)
    touch("* marked:'#{school_records_button}'")
  end

  def navigate_to_bank_slip
    touch_side_menu
    drag_until_element_is_visible(:down, boletos_button, nil, 5)
    touch("* marked:'#{boletos_button}'")
  end

  def navigate_to_student_attendance
    touch_side_menu
    drag_until_element_is_visible(:down, frequencia_button, nil, 5)
    touch("* marked:'#{frequencia_button}'")
  end

  def navigate_to_scheduled_service
    touch_side_menu
    drag_until_element_is_visible(:down, atendimento_button, nil, 5)
    touch("* marked:'#{atendimento_button}'")
  end

  def navigate_to_exam_dates
    touch_side_menu
    drag_until_element_is_visible(:down, datas_de_provas_button, nil, 5)
    touch("* marked:'#{datas_de_provas_button}'")
  end

  def navigate_to_student_grades
    touch_side_menu
    drag_until_element_is_visible(:down, notas_button, nil, 5)
    touch("* marked:'#{notas_button}'")
  end

  def touch_notifications_button
    sleep 8
    touch("* marked:'#{notification_button}'")
  end

  def touch_registration
    sleep 3
    touch("* marked:'#{matricula_button}'")
  end

  def touch_school_records_button
    sleep 3
    drag_until_element_is_visible(:down, school_records_button, nil, 5)
    touch("* marked:'#{school_records_button}'")
  end

  def touch_side_menu
    touch("* marked:'#{side_menu}'")
  end

  def send_push(n)
    sleep 3
    m = system("curl \"https://manage.pushio.com/api/v1/notify_app/ya0abMIQOg/TyGQBdqBpY7rmyb9zHog\" -d 'payload={\"message\":\"Test QA #{n}\"}&tag_query=teste'")
  end

  def tocar_botao_sair
    drag_until_element_is_visible(:down, logout_button, nil, 5)
    touch("* marked:'#{logout_button}'")
  end

  def tocar_botao_requerimentos
    touch("* id:'#{requirement_button}'")
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

  def alerta_logout_is_visible?
    is_on_page? 'Deseja mesmo sair?'
  end
end
