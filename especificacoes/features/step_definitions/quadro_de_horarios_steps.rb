######### DADO #########
Dado(/^que estou na tela de quadro de horarios$/) do
  @pageQuadroHorario = page(QuadroDeHorariosScreen).await(timeout:5)
end
Dado(/^que preenchi o campo de matrícula com uma matricula que não possui disciplinas escolhidas$/) do
  # @pageLogin.enter_matricula()
  pending
end
######### QUANDO #########

######### ENTãO #########
Então(/^devo vizualizar o horario da disciplina de Modelagem de Sistemas$/) do
  @pageQuadroHorario.schedule_is_on_page?
end

Então(/^devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario$/) do
  @pageQuadroHorario.validate_no_schedule_available
end

Então(/^devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar matriculado em nenhuma disciplina$/) do
  @pageQuadroHorario.validate_no_class_registration
end
