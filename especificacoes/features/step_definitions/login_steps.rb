######### DADO #########

Dado(/^que estou na tela de Login$/) do
end

######### QUANDO #########

Quando(/^tocar no botão de login$/) do
end
########  E  ##########
Quando(/^não preenchi o campo de matrícula$/) do
end

Quando(/^não preenchi o campo de senha$/) do
end

Quando(/^preenchi o campo de senha$/) do
end

Quando(/^preenchi o campo de matrícula$/) do
end

Quando /^preenchi o campo de matrícula incorretamente$/) do
end

Quando(/^preenchi o campo de senha incorretamente$/) do
end

Quando(/^tentei entrar com uma senha expirada$/) do

end

Quando(/^tentei usar uma matrícula de um usuário que não é aluno$/) do

end

Quando(/^preenchi o campo de senha sem ter criado uma senha$/) do

end

Quando(/^preenchi o campo de matrícula com um usuário não autorizado$/) do

end

######### ENTãO #########
Então(/^devo ver uma mensagem de aviso sobre a expiração da senha$/) do

end

Então(/devo ver uma mensagem de aviso de aplicativo exclusivo para alunos$/) do

end

Então(/devo ver uma mensagem de senha não gerada$/) do

end

Então(/devo ver uma mensagem de usuário não autorizado$/) do
  
end

Então(/^devo ver uma mensagem de erro$/) do
end

Então(/^devo ver a tela inicial$/) do
end

Então(/^o botão de login deve estar desabilitado$/) do
end
