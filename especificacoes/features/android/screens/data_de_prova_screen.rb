class DataDeProvaScreen < AndroidScreenBase
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { 'exam_dates_activity' }
  element(:online_button)       { 'Online' }

  def tocar_botao_data_online
    touch("* marked:'#{online_button}'")
  end

  def validate_presential_exam_date_is_on_page
    is_on_page? 'Elementos de Máquinas'
    is_on_page? '14'
  end

  def validate_online_exam_date_is_on_page
    is_on_page? 'Linguagem de Programação I'
    is_on_page? '4'
  end

  def validate_no_exam_dates_exception_message
    is_on_page? 'Sem provas'
  end
end
