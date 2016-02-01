class LoginScreen < AndroidScreenBase
  # Identificador da tela

   trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'login_activity' }
  element(:login_button)              { 'login_btn' }
  element(:campo_matricula)     { 'input_registration' }
  element(:campo_senha)         { 'input_password' }

  # Declare todas as acoes da tela

   action(:tocar_botao_login) {
     touch("* id:'#{login_button}'")
   }
  def enter_matricula(matricula)
    enter matricula, campo_matricula
  end

  def enter_senha (senha)
    enter senha, campo_senha
  end

  def btn_disabled?
    query("* id:'#{login_button}' enabled:'false'")
  end

end
