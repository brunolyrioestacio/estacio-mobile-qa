class SelecionarMatriculaScreen < AndroidScreenBase
  # Identificador da tela

  trait(:trait)                 { "* id:'#{layout_name}'" }
  # Declare todos os elementos da tela
  element(:layout_name)                     { 'forgot_registration_activity' }
  element(:selecionar_button)                   { 'select_item'}

  def tocar_selecionar_button
    touch("* id:'#{selecionar_button}'")
  end

end
