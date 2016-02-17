class MatriculaScreen < AndroidScreenBase
  # Identificador da tela

  trait(:trait)                 { "* id:'#{layout_name}'" }
  # Declare todos os elementos da tela
  element(:layout_name)                     { 'forgot_registration_activity' }
  element(:campo_identidade)                { 'number_identity'}
  element(:campo_nascimento)                { 'date_of_birth'}
  element(:enviar_button)                   { 'continue_btn'}

  # Declare todas as acoes da tela

  def enter_identidade(identidade)
    sleep 1
    enter identidade, campo_identidade
  end

  def enter_nascimento(nascimento)
    enter nascimento, campo_nascimento
  end

  def btn_disabled?
    query("* id:'#{enviar_button}'", :isEnabled)[0].equal? 0
  end

  def tocar_botao_continuar
     touch("* id:'#{enviar_button}'")
  end

end
