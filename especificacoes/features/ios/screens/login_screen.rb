class LoginScreen < IOSScreenBase
  # Identificador da tela
   trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
   element(:layout_name)         { 'loginView' }
   element(:button)              { 'loginButton' }
   element(:campo_matricula)     { 'registrationTextField' }
   element(:campo_senha)         { 'passwordTextField' }

  # Declare todas as acoes da tela
   action(:tocar_botao_login) {
     touch("* marked:'#{button}'")
   }
  def matricula(matricula)
    enter matricula, campo_matricula
  end

  def senha(senha)
    enter senha, campo_senha
  end

end
