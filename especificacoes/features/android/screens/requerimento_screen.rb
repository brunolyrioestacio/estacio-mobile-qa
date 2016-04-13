class RequerimentosScreen < AndroidScreenBase
  trait(:trait)                 { "* id:'#{layout_name}'" }

  element(:layout_name)         { 'requirement_view' }
  # element(:button)              { 'insert_button_identificator' }

  def validate_no_requeriments_message
    is_on_page? "Não existem requerimentos para consulta."
  end
  def validate_requirements_is_on_page
    is_on_page? "SITUAÇÃO"
  end
  # Declare todas as acoes da tela
  # action(:touch_button) {
  #   touch("* id:'#{button}'")
  # }
end
