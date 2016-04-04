class DataDeProvaScreen < IOSScreenBase

  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         {'testDatesView'}

end
