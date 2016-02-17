######### DADO #########

Dado(/^que estou na tela de tutorial$/) do
  @pageTutorial = page(TutorialScreen).await(timeout:5)
end

######### QUANDO #########


###########E############
Quando(/^o pular$/) do
  @pageTutorial.tocar_botao_pular
end


Quando(/^toquei no botão Outras Funções$/) do
  @pageHome.tocar_botao_outras_funcoes
end

Quando (/^vi um alerta com a mensagem de aviso sobre logout$/) do
  @pageHome.alerta_logout_is_visible?
end

Quando (/^toquei no botão Sair do alerta$/) do
  @pageHome.tocar_botao_sair
end

######### ENTãO #########
Então(/^devo estar na tela de Login$/) do
  @pageLogin = page(LoginScreen).await(timeout:5)
end

Então(/^devo interagir com o OnBoarding$/) do
  @pageHome.tocar_botao_entendi
  sleep 1
  @pageHome.tocar_botao_entendi
end
