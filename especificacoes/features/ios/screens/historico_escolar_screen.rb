class HistoricoEscolarScreen < IOSScreenBase
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { 'schoolRecordsView' }

  def cr_is_on_page?
    is_on_page?'CR Geral'
  end
end
