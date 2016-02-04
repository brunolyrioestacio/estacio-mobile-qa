######### DADO #########

Dado(/^que estou na tela de tutorial$/) do
  @pageTutorial = page(TutorialScreen).await(timeout:5)
end

Dado(/^que estou na tela inicial$/) do
  @pageHome = page(HomeScreen).await(timeout:5)
end
######### QUANDO #########


###########E############
Quando(/^o pulei$/) do
  @pageTutorial.tocar_botao_pular
end


Quando(/^toquei no botão Outras Funções$/) do

end

Quando (/^toquei no botão Sair$/) do

end

######### ENTãO #########
Então(/^devo estar na tela de Login$/) do
  
end

Então(/^devo interagir com o OnBoarding$/) do
  @pageHome.tocar_botao_entendi
  sleep 1
  @pageHome.tocar_botao_entendi
end
