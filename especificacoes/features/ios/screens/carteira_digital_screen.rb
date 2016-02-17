class CarteiraDigitalScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)         { 'digitalCardView' }

   def valida_dados_na_tela(matricula,cpf)
     is_on_page? matricula
     is_on_page? cpf
   end

end
