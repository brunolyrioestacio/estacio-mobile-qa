class HomeScreen < AndroidScreenBase
  # Identificador da tela

  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)           { 'home_view' }
  element(:sair_button)           {'log_out'}
  element(:confirmar_sair_button) {'custom_alert_second_btn'}

  # Declare todas as acoes da tela
  action(:tocar_botao_sair) {
    touch("* marked:'#{sair_button}'")
  }

  action(:tocar_botao_confirmar_sair){
    touch("* marked:'#{confirmar_sair_button}'")
  }

  def alerta_logout_is_visible?
    is_on_page? "Deseja mesmo sair?"
  end

end
