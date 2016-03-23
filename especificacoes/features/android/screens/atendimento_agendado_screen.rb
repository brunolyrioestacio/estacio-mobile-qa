class AtendimentoAgendadoScreen < AndroidScreenBase
  trait(:trait)                 { "* id:'#{layout_name}'" }

  element(:layout_name)            {'scheduled_service_view'}
  element(:next_button)            {''}
  element(:new_service_button)     {'create_scheduled_service_fab'}
  element(:available_hour_button)  {''}
  element(:confirmation_button)    {''}
  element(:observation_field)      {''}
  element(:spinner_category)       {'spinner_category'}
  element(:spinner_type)           {'spinner_type'}
  element(:spinner_cause)          {'spinner_cause'}
  element(:category_name)          {''}
  element(:type_name)              {''}
  element(:cause_name)             {''}
  element(:detail_button)          {'detail_btn'}

  def touch_new_service_button
    touch("* id:'#{new_service_button}'")
  end
  def choose_category
    touch("* id:'#{spinner_category}'")
    touch("* marked:'#{category_name}'")
  end
  def choose_type
    touch("* id:'#{spinner_type}'")
    touch("* marked:'#{type_name}'")
  end
  def choose_cause
    touch("* id:'#{spinner_cause}'")
    touch("* marked:'#{cause_name}'")
  end
  def choose_existing_category_type_cause

  end
  def touch_next_button
    touch("* id:'#{next_button}'")
  end
  def touch_available_hour_button
    touch("* id:'#{available_hour_button}'")
  end
  def validate_choosen_informations_is_on_page
    is_on_page? cause_name
    is_on_page? type_name
    is_on_page? cause_name
  end
  def fill_observation_field
    enter "Obs etc 154325", observation_field
  end
  def touch_confirmation_button
    touch("* id:'#{confirmation_button}'")
  end
  def touch_scheduled_service_detail_button
    pending
  end
  def touch_cancel_button
    pending
  end
  def validate_cancel_confirmation_message_is_on_page
    pending
  end
  def validate_confirmation_message_is_on_page
    is_on_page? "Agendamento realizado com sucesso."
  end
  def validate_existing_service_message_is_on_page
    is_on_page? "Você ja possui um agendamento previsto para o mesmo assunto"
  end
  def validate_schedule_limite_message_is_on_page
    is_on_page? "Não é possível agendar um novo agendamento"
  end
end
