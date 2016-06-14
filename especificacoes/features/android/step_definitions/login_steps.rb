######### DADO #########
Dado(/^que estou logado$/) do
  begin
    @pageHome = page(HomeScreen).await(timeout: 5)
  rescue
    steps %Q{
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver a tela inicial
    }
  end
end

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
