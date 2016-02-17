class LoginScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)         { 'loginView' }
   element(:button_login)        { 'loginButton' }
   element(:campo_matricula)     { 'registrationTextField' }
   element(:campo_senha)         { 'passwordTextField' }
   element(:button_esqueci_senha)         { 'forgotPasswordButton' }
   element(:esqueci_matricula_button)     { 'forgotRegistrationButton' }
   element(:logo_diamante)                {'logo'}


  # Declare todas as acoes da tela
   action(:tocar_botao_login) {
     touch("* marked:'#{logo_diamante}'")
     sleep 1
     touch("* marked:'#{button_login}'")
   }

   action(:tocar_botao_esqueci_senha) {
     touch("* marked:'#{button_esqueci_senha}'")
   }

   action(:tocar_botao_esqueci_matricula) {
      touch("* marked:'#{esqueci_matricula_button}'")
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
