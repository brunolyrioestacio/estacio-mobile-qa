class RequerimentosScreen < AndroidScreenBase
  trait(:trait)                             { "* id:'#{layout_name}'" }

  element(:layout_name)                     { 'requirement_view' }
  element(:new_requirement_button)          { 'create_requirement_fab' }
  element(:new_requirement_float_button)    { 'Novo Requerimento' }
  element(:category)                        { 'ESTÁGIO' }
  element(:category_spinner)                { 'spinner_category' }
  element(:requirement_type)                { 'SOLICITAR REDUÇÃO CH DE ESTÁGIO-LETRAS/PEDAG./HIST' }
  element(:requirement_type_spinner)        { 'spinner_type' }
  element(:next_button)                     { 'Próximo' }
  element(:observation_field)               { 'textarea' }
  element(:finish_requirement_button)       { 'Abrir Requerimento' }
  element(:requeriment_description_text)    { 'Requerimento onde o aluno solicita redução ' }

  def validate_no_requeriments_message
    is_on_page? 'Não existem requerimentos para consulta.'
  end

  def validate_requirements_is_on_page
    is_on_page? 'SITUAÇÃO'
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

  def validate_requirements_information_is_on_page
    is_on_page? requeriment_description_text
  end

  def touch_next_button
    touch("* marked:'#{next_button}'")
  end

  def fill_obsersation_field
    sleep 3
    query("* marked:'#{observation_field}'", setText: 'obs test 123')
  end

  def touch_finish_requirement_button
    touch("* marked:'#{finish_requirement_button}'")
  end

  def validate_confirmation_message_is_on_page
    is_on_page? 'O requerimento número'
    is_on_page? 'foi gerado com sucesso'
  end
end
