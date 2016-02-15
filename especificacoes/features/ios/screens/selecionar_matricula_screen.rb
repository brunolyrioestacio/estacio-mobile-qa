class SelecionarMatriculaScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }


  # Declare todos os elementos da tela
   element(:layout_name)                     { 'selectRegistrationView' }
   element(:selecionar_button)                   { 'Selecionar'}

   def tocar_selecionar_button
     touch("* marked:'#{selecionar_button}'")
   end

end
