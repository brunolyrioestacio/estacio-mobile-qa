class FrequenciaScreen < AndroidScreenBase
  # The screen identificator
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare all the elements of this screen
  element(:layout_name)         { 'activity_student_frequency' }
  # element(:button)              { 'insert_button_identificator' }

  def attendance_is_on_page?
    is_on_page? "ARQUITETURA DE SISTEMAS DISTRIBUÍDOS"
    is_on_page? "Total de faltas"
    is_on_page? "Limite de faltas permitidas"
  end

  def attendance_is_not_on_page?
    is_on_page?("Total de faltas",false)
    is_on_page?("Limite de faltas permitidas",false)
  end

  def validate_no_attendance_message
    is_on_page? "Não existe frequência para o aluno!"
  end

end
