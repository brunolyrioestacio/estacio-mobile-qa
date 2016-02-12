######### DADO #########
Dado (/^que estou na tela de esqueci minha matricula$/) do
  @pageMatricula = page(MatriculaScreen).await(timeout: 5)
end

Dado (/ˆque estou na tela com as matrículas do usuário$/) do

end
######### QUANDO #########

Quando (/^tocar no botão de continuar$/) do
  @pageMatricula.is_on_page? "Enviar"
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
  nascimento=""
  @pageMatricula.enter_nascimento nascimento
end

Quando(/^preenchi o campo de identidade$/) do
  identidade=""
  @pageMatricula.enter_identidade identidade
end

Quando (/^preenchi o campo de identidade incorretamente$/) do
  identidade="61283401324"
  @pageMatricula.enter_identidade identidade
end

Quando(/^preenchi o campo de data de nascimento incorretamente$/) do
  nascimento="04081990"
  @pageMatricula.enter_nascimento nascimento
end

Quando (/^tocar no botão de escolher matrícula$/) do

end

Quando (/^o campo de matrícula deve estar preenchido$) do

end

######### ENTãO #########

Então (/^devo estar na tela de esqueci minha matricula$/) do
  @pageMatricula = page(MatriculaScreen).await(timeout: 5)
end

Então(/^o botão de continuar deve estar desabilitado$/) do
  @pageMatricula.btn_disabled?
end

Então (/^devo ver um alerta com uma mensagem de erro$/) do
  @pageMatricula.is_on_page? "Identidade ou data de nascimento inválida."
end

Então (/^devo estar na tela com as matrículas do usuário$/) do

end

Então (/^devo estar na tela de login$/) do
  @pageLogin = page(LoginScreen).await(timeout: 5)
end
