class AtendimentoAgendadoScreen < AndroidScreenBase
  trait(:trait)                 { "* id:'#{layout_name}'" }

  element(:layout_name)                 {'scheduled_service_view'}
  element(:next_button)                 {'button_next_step'}
  element(:new_service_button)          {'create_scheduled_service_fab'}
  element(:available_hour_button)       {'select_hour'}
  element(:confirmation_button)         {'Ok'}
  element(:observation_field)           {'observations'}
  element(:spinner_category)            {'spinner_category'}
  element(:spinner_type)                {'spinner_type'}
  element(:spinner_cause)               {'spinner_cause'}
  element(:detail_button)               {'detail_btn'}
  element(:review_buttonn)              {'review_btn'}
  element(:cancel_button)               {'cancel_btn'}
  element(:bad_option_radio_button)     {'bad_option'}
  def validate_review_screen_is_on_page?
    pending
  end
  def touch_bad_option
    touch("* id:'#{bad_option_radio_button}'")
  end
  def touch_review_button
    touch("* id:'#{review_button}'")
  end
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
    touch("* marked:'#{category_name}'")
    touch("* marked:'#{type_name}'")
    touch("* marked:'#{cause_name}'")
  end

  def touch_next_button
    touch("* marked:'#{next_button}'")
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
  def validate_review_options
    is_on_page? "Bom"
    is_on_page? "Regular"
    is_on_page? "Ruim"
  end
  def touch_scheduled_service_detail_button
    touch("* id:'#{detail_button}'")
  end
  def touch_cancel_button
    touch("* id:'#{cancel_button}'")
  end
  def validate_cancel_confirmation_message_is_on_page
    pending
  end
  def validate_bad_option_choose_reasons
    is_on_page? "Pelo atendimento prestado"
    is_on_page? "Pela resolução do motivo do atendimento"
    is_on_page? "Pelo cumprimento do horário marcado"
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
