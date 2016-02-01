class HomeScreen < AndroidScreenBase
  # Identificador da tela

   trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'home_view' }

  # Declare todas as acoes da tela

end
