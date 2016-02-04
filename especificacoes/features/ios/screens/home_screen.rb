class HomeScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)         { 'homeView' }
   element(:entendi_button)      {'OK, entendi'}

   action(:tocar_botao_entendi) {
     touch("* marked:'#{entendi_button}'")[1]
   }
end
