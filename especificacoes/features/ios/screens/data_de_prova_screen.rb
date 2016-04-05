class DataDeProvaScreen < IOSScreenBase

  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         {'testDatesView'}
  element(:online_button)       {'onlineTestDatesTabButton'}


  action(:tocar_botao_data_online) {
    touch("* marked:'#{online_button}'")
  }
end
