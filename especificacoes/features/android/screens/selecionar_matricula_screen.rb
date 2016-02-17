class SelecionarMatriculaScreen < AndroidScreenBase
  # Identificador da tela

  trait(:trait)                 { "* id:'#{layout_name}'" }
  # Declare todos os elementos da tela
  element(:layout_name)                     { '' }
  element(:selecionar_button)                   { 'Selecionar'}

  def tocar_selecionar_button
    touch("* id:'#{selecionar_button}'")
  end

end
