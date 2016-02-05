class HomeScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)           { 'homeView' }
   element(:entendi_button)        {'OK, entendi'}
   element(:outras_funcoes_button) {'Outras Funções'}
   element(:sair_button)           {'Sair'}
   element(:banner)                {'bannerView'}
   element(:banner_view)           {'bannerDetailView'}

   action(:tocar_botao_entendi) {
     touch("* marked:'#{entendi_button}'")[1]
   }

   action(:tocar_botao_outras_funcoes) {
     touch("* marked:'#{outras_funcoes_button}'")
   }
   action(:tocar_botao_sair) {
     touch("* marked:'#{sair_button}'")
   }
   action(:tocar_banner) {
     touch("* marked:'#{banner}'")
   }
   action(:tocar_detalhe_banner) {
     touch("* marked:'#{banner_view}'")
   }
   def alerta_logout_is_visible?
     is_on_page? "Deseja mesmo sair?"
   end

   def estou_no_detalhe_do_banner
    query("* marked:'#{banner_view}'").nil?
   end

end
