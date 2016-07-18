######### DADO #########
Dado(/^que estou na tela de frequência$/) do
  @page_frequencia = page(FrequenciaScreen).await(timeout: 5)
end

Dado(/^que preenchi o campo de matrícula com uma matricula de graduação EAD do período vigente$/) do
  @pageLogin.enter_matricula("201512955639")
end

Dado(/^que preenchi o campo de matrícula com uma matricula não ativa$/) do
  @pageLogin.enter_matricula("200902006765")
end

######### QUANDO #########

######### ENTAO #########
Então(/^devo visualizar informações de porcentagem de faltas das disciplinas$/) do
  @page_frequencia.attendance_is_on_page?
end

Então(/^não devo visualizar informações de porcentagem de faltas$/) do
  @page_frequencia.attendance_is_not_on_page?
end

Então(/^devo ver uma mensagem de aviso sobre a falta de frequências para o aluno$/) do
  @page_frequencia.validate_no_attendance_message
end
