class LoginScreen < AndroidScreenBase
  # Identificador da tela

   trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'login_activity' }
  element(:button)              { '' }
  element(:campo_matricula)           {''}
  element(:campo_senha)               {''}

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
