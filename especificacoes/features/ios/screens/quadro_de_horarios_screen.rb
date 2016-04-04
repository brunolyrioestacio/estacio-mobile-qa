class QuadroDeHorariosScreen < IOSScreenBase
  # Identificador da tela
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'timeTableView' }

  def schedule_is_on_page?
    is_on_page? "MODELAGEM DE SISTEMAS"
  end

  def validate_no_schedule_available
    is_on_page? "Quadro de Horário não disponível"
  end

  def validate_no_class_registration
    is_on_page? "Quadro de Horário não disponível"
  end
end
