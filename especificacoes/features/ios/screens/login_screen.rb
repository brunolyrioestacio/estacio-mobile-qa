class LoginScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)         { 'loginView' }
   element(:button_login)        { 'loginButton' }
   element(:campo_matricula)     { 'registrationTextField' }
   element(:campo_senha)         { 'passwordTextField' }

  # Declare todas as acoes da tela
   action(:tocar_botao_login) {
     touch("* marked:'#{button_login}'")
   }
  def enter_matricula(matricula)
    clear_text("* marked:'registrationTextField'")
    enter matricula, campo_matricula
  end

  def enter_senha(senha)
    enter senha, campo_senha
  end

  def btn_disabled?
    query("* id:'#{button_login}'", :isEnabled)[0].equal? 0
  end

end
