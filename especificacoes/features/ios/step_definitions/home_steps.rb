######### DADO #########
######### QUANDO #########
Quando(/^tocar na mesma$/) do
  @pageHome = page(HomeScreen).await(timeout:5)
  @pageHome.tocar_detalhe_banner
end

###########E############

Quando(/^toquei no banner$/) do
  @pageHome.tocar_banner
end

Quando(/^estou na tela de detalhes do banner$/) do
  @pageHome.estou_no_detalhe_do_banner
end
######### ENTãO #########
Então(/^devo ver um alerta de redirecionamento para uma página externa$/) do
  @pageHome.is_on_page? "Você será direcionado para um site externo. Deseja continuar?"
end
