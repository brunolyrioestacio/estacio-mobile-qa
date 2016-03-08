class QuadroDeHorariosScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)           { 'timesheet_activity' }
  element(:spinner_time_table_type) {''}
  element(:label_online_courses)  {'Disciplinas Online'}

  def validate_course_is_on_page(course)
    is_on_page? course
  end

  def touch_spinner_time_table_type)
    touch("* id:'#{combo_time_table_type}'")
  end

  action(:touch_online_courses){
    touch("* id:'Disciplinas Online'")
  }

  def validate_no_online_courses_message
    # is_on_page? ""
  end

  def validate_no_schedule_available
    is_on_page? "Você não está matriculado em nenhuma disciplina no Período Acadêmico vigente!"
  end

  def validate_no_class_registration
    is_on_page? "Você não está matriculado em nenhuma disciplina no Período Acadêmico vigente!"
  end
end
