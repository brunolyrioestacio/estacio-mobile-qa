######### DADO #########

Dado(/^que estou na tela de tutorial$/) do
  @page_tutorial = page(TutorialScreen).await(timeout: 5)
end

######### QUANDO #########

########### E ############
Quando(/^o pular$/) do
  @page_tutorial.tocar_botao_pular
end

Quando(/^toquei no botão Outras Funções$/) do
  @pageHome.tocar_botao_outras_funcoes
end

Quando(/^vi um alerta com a mensagem de aviso sobre logout$/) do
  @pageHome.alerta_logout_is_visible?
end

Quando(/^confirmar o logout$/) do
  @pageHome.tocar_botao_sair
end

######### ENTAO #########
Quando(/^ver um alerta com o aviso de logout$/) do
  @pageHome.alerta_logout_is_visible?
end

Então(/^devo estar na tela de Login$/) do
  @pageLogin = page(LoginScreen).await(timeout:5)
end

Então(/^devo interagir com o OnBoarding$/) do
  sleep 4
  @pageHome.tocar_botao_entendi
  @pageHome.tocar_botao_entendi
end
