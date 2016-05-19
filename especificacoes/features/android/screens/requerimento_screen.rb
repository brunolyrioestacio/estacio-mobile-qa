class RequerimentosScreen < AndroidScreenBase
  trait(:trait)                             { "* id:'#{layout_name}'" }

  element(:layout_name)                     { 'requirement_view' }
  element(:new_requirement_button)          { 'create_requirement_fab' }
  element(:new_requirement_float_button)    { 'Novo Requerimento' }
  element(:category)                        { 'Estágio' }
  element(:category_spinner)                { '' }
  element(:requirement_type)                { 'Solicitar redução ch de estágio-letras/pedag./hist' }
  element(:requirement_type_spinner)        { '' }
  element(:next_button)                     { '' }
  element(:obsersation_field)               { '' }
  element(:finish_button)                   { '' }

  def validate_no_requeriments_message
    is_on_page? "Não existem requerimentos para consulta."
  end

  def validate_requirements_is_on_page
    is_on_page? "SITUAÇÃO"
  end

  def touch_new_requirement_button
    a = query("* id:'#{new_requirement_button}'")[0]
    h = a['rect']['height']
    w = a['rect']['width']
    center_x = a['rect']['center_x']
    center_y = a['rect']['center_y']
    x1 = (center_x + w / 2) - 10
    y1 = (center_y + h / 2) - 10
    system("adb shell input tap #{x1} #{y1}")
  end

  def touch_new_requirement_float_button
    touch("* marked:'#{new_requirement_float_button}'")
  end

  def choose_categoty
    sleep 2
    touch("* marked:'#{category_spinner}'")
    sleep 1
    touch("* marked:'#{category}'")
  end

  def choose_requirement_type
    sleep 2
    touch("* marked:'#{requirement_type_spinner}'")
    sleep 1
    touch("* marked:'#{requirement_type}'")
  end

  def touch_next_button
    touch("* marked:'#{next_button}'")
  end

  def fill_obsersation_field
    enter 'Obs etc 154325', observation_field
  end

  def touch_finish_button
    touch("* marked:'#{finish_button}'")
  end

  def validate_confirmation_message_is_on_page
    is_on_page? 'O requerimento número'
    is_on_page? 'foi gerado com sucesso'
  end
end
