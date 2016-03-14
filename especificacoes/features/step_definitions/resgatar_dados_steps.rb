######### DADO #########
Dado(/^que estou na tela de esqueci minha matricula$/) do
  @pageMatricula = page(MatriculaScreen).await(timeout: 5)
end

Dado(/^que estou na tela com as matrículas do usuário$/) do
  @pageSelecionarMatricula = page(SelecionarMatriculaScreen).await(timeout: 5)
end
######### QUANDO #########

Quando(/^tocar no botão de continuar$/) do
  @pageMatricula.tocar_botao_continuar
end

########  E  ##########

Quando(/^toquei no botão de esqueci minha matricula$/) do
  @pageLogin.tocar_botao_esqueci_matricula
end

Quando(/^não preenchi o campo de identidade$/) do

end

Quando(/^não preenchi o campo de data de nascimento$/) do

end

Quando(/^preenchi o campo de data de nascimento$/) do
  nascimento="10/11/1983"
  @pageMatricula.enter_nascimento nascimento
end

Quando(/^preenchi o campo de identidade$/) do
  identidade="0205882327"
  @pageMatricula.enter_identidade identidade
end

Quando(/^preenchi o campo de identidade incorretamente$/) do
  identidade="61283401324"
  @pageMatricula.enter_identidade identidade
end

Quando(/^preenchi o campo de data de nascimento incorretamente$/) do
  nascimento="04/08/1190"
  @pageMatricula.enter_nascimento nascimento
end

Quando(/^tocar no botão de escolher matrícula$/) do
  @pageSelecionarMatricula.tocar_selecionar_button
end

Quando(/^o campo de matrícula deve estar preenchido$/) do
  @pageLogin.campo_matricula matricula
end

Quando(/^o campo de matrícula deve estar preenchido com a matricula selecionada$/) do
  @pageLogin.is_on_page? "200927004308"
end

######### ENTãO #########

Então(/^devo estar na tela de esqueci minha matricula$/) do
  @pageMatricula = page(MatriculaScreen).await(timeout: 5)
end

Então(/^o botão de continuar deve estar desabilitado$/) do
  @pageMatricula.btn_disabled?
end

Então(/^devo ver um alerta com uma mensagem de erro$/) do
  @pageMatricula.is_on_page? "Aluno não encontrado!"
end

Então(/^devo estar na tela com as matrículas do usuário$/) do
    @pageSelecionarMatricula = page(SelecionarMatriculaScreen).await(timeout: 5)
end

Então(/^devo estar na tela de login$/) do
  @pageLogin = page(LoginScreen).await(timeout: 5)
end
