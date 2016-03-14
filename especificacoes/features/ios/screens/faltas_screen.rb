class FaltasScreen < IOSScreenBase
  # The screen identificator
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { 'absenseView' }

  def attendance_is_on_page?
    is_on_page? "ARQUITETURA DE SISTEMAS DISTRIBUÍDOS"
    is_on_page? "0%"
    is_on_page? "44h"
  end

  def attendance_is_not_on_page?
    is_on_page?("Faltas",false)
  end

  def validate_no_attendance_message
    is_on_page? "Você não está matriculado em nenhuma disciplina."
  end
end
