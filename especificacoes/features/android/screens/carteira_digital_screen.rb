class CarteiraDigitalScreen < AndroidScreenBase
  # Identificador da tela
   trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)         { 'student_card_activity' }

   def valida_dados_na_tela(matricula,cpf)
     is_on_page? matricula
     is_on_page? cpf
   end

end
