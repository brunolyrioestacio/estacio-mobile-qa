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
