class CarteiraDigitalScreen < AndroidScreenBase
  trait(:trait)                 { "* id:'#{layout_name}'" }

  element(:layout_name)         { 'student_card_activity' }

  def validate_personal_informations_is_on_page(registration, cpf)
    is_on_page? registration
    is_on_page? cpf
  end
end
