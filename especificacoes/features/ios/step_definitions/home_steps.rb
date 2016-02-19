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

Quando(/^toquei no tile de adicionar um atalho$/) do
  @pageHome.tocar_adicionar_atalho
end
Quando(/^toquei no botão de manual do aluno$/) do
  @pageHome.tocar_botao_manual_aluno
end

Então(/^devo estar na tela inicial com o tile preenchido com manual do aluno$/) do
  @pageHome.is_on_page? "Manual do Aluno"
end

Então(/^devo vizualizar o manual do aluno$/) do
  @pageHome.is_on_page? "Manual do Aluno"
end
