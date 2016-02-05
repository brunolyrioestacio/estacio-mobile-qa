######### DADO #########

Dado(/^que estou na tela de Login$/) do
  @pageLogin = page(LoginScreen).await(timeout: 10)
end

######### QUANDO #########

Quando(/^tocar no botão de login$/) do
  @pageLogin.tocar_botao_login
end
########  E  ##########
Quando(/^não preenchi o campo de matrícula$/) do
end

Quando(/^não preenchi o campo de senha$/) do
end

Quando(/^preenchi o campo de senha$/) do
  senha="1234as"
  @pageLogin.enter_senha senha
end

Quando(/^preenchi o campo de matrícula$/) do
  matricula="201402389388"
  @pageLogin.enter_matricula matricula
end

Quando (/^preenchi o campo de matrícula incorretamente$/) do
  matricula="24763726178"
  @pageLogin.enter_matricula matricula
end

Quando(/^preenchi o campo de senha incorretamente$/) do
  senha="meowmeow"
  @pageLogin.enter_senha  senha
end

Quando(/^tentei usar uma matrícula de um usuário que não é aluno$/) do
  matricula="1052405"
  @pageLogin.enter_matricula matricula
end

Quando(/^preenchi o campo de matrícula com um usuário não autorizado$/) do
  matricula=""
  @pageLogin.enter_matricula matricula
end

  Quando(/^preenchi o campo de matrícula com um usuário que não aceitou os termos$/) do
    matricula="200202352679"
    @pageLogin.enter_matricula matricula
  end

######### ENTãO #########

Então(/^devo ver uma mensagem de aviso de aplicativo exclusivo para alunos$/) do
    @pageLogin.is_on_page? "Este aplicativo é exclusivo para alunos"
end

Então(/^devo ver uma mensagem de usuário não autorizado$/) do
    @pageLogin.is_on_page? "Usuário não autorizado"
end

Então(/^devo ver uma mensagem de erro$/) do
    @pageLogin.is_on_page? "Matrícula ou senha incorretas"
end

Então(/^devo ver uma mensagem de aviso de termos não aceitos$/) do
    @pageLogin.is_on_page? "Para realizar o login é necessário aceitar o termo de acesso."
end

Então(/^devo ver a tela inicial$/) do
    @pageHome = page(HomeScreen).await(timeout:10)
end

Então(/^o botão de login deve estar desabilitado$/) do
  @pageLogin.btn_disabled?
end
