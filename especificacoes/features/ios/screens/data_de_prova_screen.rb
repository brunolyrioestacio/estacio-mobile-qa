class DataDeProvaScreen < IOSScreenBase

  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         {'testDatesView'}
  element(:online_button)       {'onlineTestDatesTabButton'}


  action(:tocar_botao_data_online) {
    touch("* marked:'#{online_button}'")
  }

  def validate_presential_exam_date_is_on_page
    is_on_page? "ESTRUTURA DE DADOS"
  end
  def validate_online_exam_date_is_on_page
    is_on_page? "Projeto de design editorial"
  end
  def validate_no_exam_dates_exception_message
    is_on_page? "Sem provas"
  end
end
