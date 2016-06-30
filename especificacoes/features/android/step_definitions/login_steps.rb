
###########E############

Quando(/^ver um alerta com o aviso de logout$/) do
  @pageHome.alerta_logout_is_visible?
end

Quando(/^confirmar o logout$/) do
  @pageHome.tocar_botao_confirmar_sair
end

######### ENTãO #########

Então(/^devo estar na tela de Login$/) do
  @pageLogin = page(LoginScreen).await(timeout:5)
end
