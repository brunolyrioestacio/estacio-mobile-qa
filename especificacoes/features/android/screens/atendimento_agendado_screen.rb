class AtendimentoAgendadoScreen < AndroidScreenBase
  trait(:trait)                 { "* id:'#{layout_name}'" }

  element(:layout_name)                 { 'scheduled_service_view' }
  element(:new_service_button)          { 'create_scheduled_service_fab' }
  element(:ok_button)                   { 'OK' }

  def touch_new_service_button
    touch("* id:'#{new_service_button}'")
  end

  def validate_confirmation_message_is_on_page
    is_on_page? 'Agendamento realizado com sucesso.'
    touch("* marked:'#{ok_button}''")
  end

  def validate_schedule_limite_message_is_on_page
    is_on_page? 'Não é possível agendar um novo atendimento'
  end
end
