class NotasScreen < IOSScreenBase
  # Identificador da tela
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { '' }
  # element(:button)              { 'insert_button_identificator' }

  # Declare todas as acoes da tela
  # action(:touch_button) {
  #   touch("* marked:'#{button}'")
  # }

  def grades_is_on_page
    is_on_page? "Estrutura de dados"
    is_on_page? "" #AV1#
    is_on_page? "" #AV2#
    is_on_page? "" #AV3#
  end

  def validate_no_grades
    is_on_page? ""
  end

  def validate_no_class_registration
    is_on_page? ""
  end
end
