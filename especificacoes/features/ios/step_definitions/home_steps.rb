######### DADO #########
######### QUANDO #########
Quando(/^tocar na mesma$/) do
  @pageHome = page(HomeScreen).await(timeout:5)
  @pageHome.tocar_detalhe_banner
end

###########E############


Quando(/^estou na tela de detalhes do banner$/) do
  @pageHome.estou_no_detalhe_do_banner
end
######### ENTãO #########
