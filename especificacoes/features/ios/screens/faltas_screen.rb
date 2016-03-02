class FaltasScreen < IOSScreenBase
  # The screen identificator
  # trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { '' }

  def attendance_is_on_page?
    is_on_page? "ARQUITETURA DE SISTEMAS DISTRIBUIDOS"
    is_on_page? "% Faltas"
    is_on_page? "44h"
  end

  def attendance_is_not_on_page?
    is_on_page?("Total de faltas",false)
    is_on_page?("Limite de faltas permitidas",false)
  end

  def validate_no_attendance_message
    is_on_page? "Não existe frequência para o aluno!"
  end
end
