class LoginScreen < AndroidScreenBase
  trait(:trait)                         { "* id:'#{layout_name}'" }

  element(:layout_name)                 { 'login_activity' }
  element(:login_button)                { 'login_btn' }
  element(:campo_matricula)             { 'input_registration' }
  element(:campo_senha)                 { 'input_password' }
  element(:esqueci_senha_button)        { 'forgot_password' }
  element(:esqueci_matricula_button)    { 'forgot_registration' }

  def tocar_botao_login
    touch("* id:'#{login_button}'")
  end

  def tocar_botao_esqueci_senha
    touch("* id:'#{esqueci_senha_button}'")
  end

  def tocar_botao_esqueci_matricula
    touch("* id:'#{esqueci_matricula_button}'")
  end

  def enter_matricula(matricula)
    enter matricula, campo_matricula
  end

  def enter_senha(senha)
    sleep 2
    enter senha, campo_senha
  end

  def btn_disabled?
    query("* id:'#{login_button}' enabled:'false'")
  end
end
