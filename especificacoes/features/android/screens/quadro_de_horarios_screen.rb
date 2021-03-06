class QuadroDeHorariosScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)           { 'timesheet_activity' }
  element(:spinner_time_table_type) {'spinner_nav'}
  element(:label_online_courses)  {'Disciplinas Online'}
  element(:sunday_tab)             {'Dom'}
  def getCurrentDayName
    return Time.now.strftime("%A")
  end

  def validate_course_is_on_page(course)
    is_on_page? course
  end
  def validate_sunday_classes_is_on_page
    is_on_page? "Módulo Tcc"
  end
  def touch_sunday_tab
    touch("* marked:'#{sunday_tab}'")
  end
  def validate_presential_courses_is_on_page
    case getCurrentDayName
    when "Sunday"
      is_on_page? "Você não possui nenhuma aula neste dia."
    when "Monday"
      is_on_page?"Modelagem de Sistemas"
    when "Tuesday"
      is_on_page?"Padrões de Projeto de Software"
    when "Wednesday"
      is_on_page?"Você não possui nenhuma aula neste dia."
    when "Thursday"
      is_on_page?"Estrutura de Dados"
    when "Friday"
      is_on_page?"Você não possui nenhuma aula neste dia."
    when "Saturday"
      is_on_page?"Você não possui nenhuma aula neste dia."
    end
  end
  def validate_only_presential_courses_is_on_page
    case getCurrentDayName
    when "Sunday"
      is_on_page? "Você não possui nenhuma aula neste dia."
    when "Monday"
      is_on_page?"Você não possui nenhuma aula neste dia."
    when "Tuesday"
      is_on_page?"Você não possui nenhuma aula neste dia."
    when "Wednesday"
      is_on_page?"TÓPICOS ESPECIAIS"
    when "Thursday"
      is_on_page?"TÓPICOS ESPECIAIS"
    when "Friday"
      is_on_page?"TÓPICOS ESPECIAIS"
    when "Saturday"
      is_on_page?"Você não possui nenhuma aula neste dia."
    end
  end
  def validate_online_courses_is_on_page
    is_on_page? "AUDITORIA DE SISTEMAS"
    is_on_page? "QUALIDADE DE SOFTWARE"
  end

  def touch_spinner_time_table_type
    touch("* id:'#{spinner_time_table_type}'")
  end

  action(:touch_online_courses){
    touch("* marked:'Quadro de horários - On-line'")
  }

  def validate_no_online_courses_message
    is_on_page? "Você não está matriculado em nenhuma disciplina online no Período Acadêmico vigente!"
  end

  def validate_no_schedule_available
    is_on_page? "Você não está matriculado em nenhuma disciplina no Período Acadêmico vigente!"
  end

  def validate_no_class_registration
    is_on_page? "Você não está matriculado em nenhuma disciplina no Período Acadêmico vigente!"
  end
end
