class MatriculaScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }


  # Declare todos os elementos da tela
   element(:layout_name)                     { 'forgotMyRegistrationView' }
   element(:campo_identidade)                { 'idNumberTextField'}
   element(:campo_nascimento)                { 'birthdayTextField'}
   element(:datepicker_nascimento)           { 'birthdayDatePicker'}
   element(:enviar_button)                   { 'Enviar'}




   def enter_identidade(identidade)
     clear_text("* marked:'idNumberTextField'")
     enter identidade, campo_identidade
   end

   def enter_nascimento(nascimento)
     nascimento =  DateTime.new(1983,11,10)
     touch("* marked:'#{campo_nascimento}'")
     picker_set_date_time(nascimento, options = {:animate => true, :picker_id => datepicker_nascimento, :notify_targets => true})
   end

   def btn_disabled?
     query("* marked:'#{enviar_button}'", :isEnabled)[0].equal? 0
   end

   def tocar_botao_continuar
      touch("* marked:'#{enviar_button}'")
   end

end
