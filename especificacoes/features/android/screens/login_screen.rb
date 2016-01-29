class LoginScreen < AndroidScreenBase
  # Identificador da tela

   trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'login_activity' }
  element(:button)              { 'login_btn' }
  element(:campo_matricula)     { 'input_registration' }
  element(:campo_senha)         { 'input_password' }

  # Declare todas as acoes da tela

   action(:tocar_botao_login) {
     touch("* id:'#{button}'")
   }
  def matricula(matricula)
    enter matricula, campo_matricula
  end

  def senha (senha)
    enter senha, campo_senha
  end


end
