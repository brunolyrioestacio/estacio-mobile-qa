class AtendimentoAgendadoScreen < AndroidScreenBase
  trait(:trait)                 { "* id:'#{layout_name}'" }

  element(:layout_name)            {''}
  element(:next_button)            {''}
  element(:new_service_button)     {''}
  element(:available_hour_button)  {''}
  element(:confirmation_button)    {''}
  element(:observation_field)      {''}
  element(:spinner_category)       {''}
  element(:spinner_type)           {''}
  element(:spinner_cause)          {''}
  element(:category_name)          {''}
  element(:type_name)              {''}
  element(:cause_name)             {''}

  def touch_new_service_button do
    touch("* id:'#{new_service_button}'")
  end
  def choose_category do
    touch("* id:'#{spinner_category}'")
    touch("* marked:'#{category_name}'")
  end
  def choose_type do
    touch("* id:'#{spinner_type}'")
    touch("* marked:'#{type_name}'")
  end
  def choose_cause do
    touch("* id:'#{spinner_cause}'")
    touch("* marked:'#{cause_name}'")
  end
  def touch_next_button do
    touch("* id:'#{next_button}'")
  end
  def touch_available_hour_button do
    touch("* id:'#{available_hour_button}'")
  end
  def validate_choosen_informations_is_on_page do
    is_on_page? cause_name
    is_on_page? type_name
    is_on_page? cause_name
  end
  def fill_observation_field do
    enter "Obs etc 154325", observation_field
  end
  def touch_confirmation_button do
    touch("* id:'#{confirmation_button}'")
  end
  def validate_confirmation_message_is_on_page do
    is_on_page? ""
  end

end
