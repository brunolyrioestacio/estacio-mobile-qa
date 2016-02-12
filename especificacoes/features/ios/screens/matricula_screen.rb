class MatriculaScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)                     { 'forgotMyRegistrationView' }
   element(:campo_identidade)                { 'idNumberTextField'}
   element(:campo_nascimento)                { 'birthdayTextField'}
   element(:enviar_button)                   { 'Enviar'}




   def enter_identidade(identidade)
     clear_text("* marked:'idNumberTextField'")
     enter identidade, campo_identidade
   end

   def enter_nascimento(nascimento)
     enter nascimento, campo_nascimento
   end

   def btn_disabled?
     query("* marked:'#{enviar_button}'", :isEnabled)[0].equal? 0
   end

end
