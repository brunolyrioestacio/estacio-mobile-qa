class CarteiraDigitalScreen < IOSScreenBase
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  element(:layout_name)         { 'digitalCardView' }

  def validate_personal_informations_is_on_page(registration, cpf)
    is_on_page? registration
    is_on_page? cpf
  end
end
