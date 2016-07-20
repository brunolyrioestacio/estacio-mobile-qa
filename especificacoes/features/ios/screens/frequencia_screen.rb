class FrequenciaScreen < IOSScreenBase
  # The screen identificator
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { 'absenseView' }

  def attendance_is_on_page?
    is_on_page? 'FILOSOFIA DA EDUCAÇÃO BRASILEIRA'
    is_on_page? '0%'
    is_on_page? '88h'
  end

  def attendance_is_not_on_page?
    is_on_page?('% Falta', false)
  end

  def validate_no_attendance_message
    is_on_page? 'Você não está matriculado em nenhuma disciplina.'
  end
end
