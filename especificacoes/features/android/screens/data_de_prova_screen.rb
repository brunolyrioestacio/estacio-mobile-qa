class DataDeProvaScreen < AndroidScreenBase
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { 'exam_dates_activity' }
  element(:online_button)       { 'Online' }

  def tocar_botao_data_online
    touch("* marked:'#{online_button}'")
  end

  def validate_presential_exam_date_is_on_page
    is_on_page? 'ESTRUTURA DE DADOS'
  end

  def validate_online_exam_date_is_on_page
    is_on_page? 'Projeto de design editorial'
  end

  def validate_no_exam_dates_exception_message
    is_on_page? 'Sem provas'
  end
end
