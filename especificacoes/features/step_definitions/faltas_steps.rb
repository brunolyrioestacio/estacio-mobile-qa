######### DADO #########
Dado(/^que estou na tela de faltas$/) do
  @pageFaltas = page(FaltasScreen).await(timeout: 5)
end

Dado(/^que preenchi o campo de matrícula com uma matricula de graduação EAD do período vigente$/) do
  @pageLogin.enter_matricula("201512955639")
end

Dado(/^que preenchi o campo de matrícula com uma matricula não ativa$/) do
  @pageLogin.enter_matricula("200602091643")
end

######### QUANDO #########

######### ENTÃO #########
Então(/^devo visualizar informações de porcentagem de faltas das disciplinas$/) do
  @pageFaltas.attendance_is_on_page?
end


Então(/^não devo visualizar informações de porcentagem de faltas$/) do
  @pageFaltas.attendance_is_not_on_page?
end


Então(/^devo ver uma mensagem de aviso sobre a falta de frequencias para o aluno$/) do
  @pageFaltas.validate_no_attendance_message
end
