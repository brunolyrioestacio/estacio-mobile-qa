class TutorialScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)         { 'Bem-vindo ao Estácio Mobile' }
   element(:pular_button)         {'skipTourButton'}

   action(:tocar_botao_pular) {
     touch("* marked:'#{pular_button}'")
   }

end
