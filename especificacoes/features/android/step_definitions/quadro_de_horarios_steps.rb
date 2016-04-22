######### DADO #########

Dado(/^que estou visualizando o horario das disciplinas presenciais do dia corrente da semana$/) do
  @pageQuadroHorario.validate_presential_courses_is_on_page
end
Dado(/^que estou visualizando apenas o horario das disciplinas presenciais do dia corrente da semana$/)do
  @pageQuadroHorario.validate_only_presential_courses_is_on_page
end
Dado(/^devo visualizar o horario das disciplinas online$/) do
  @pageQuadroHorario.validate_online_courses_is_on_page
end

Dado(/^que estou na tela de quadro de horarios$/) do
  @pageQuadroHorario = page(QuadroDeHorariosScreen).await(timeout:5)
end

Dado(/^que realizei o processo de login usando uma matrícula que não possui disciplinas escolhidas$/) do
  matricula = "200602091643"
  @pageLogin.enter_matricula(matricula)
  steps %Q{
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
  }
end
######### QUANDO #########
Quando(/^tocar no spinner de escolha de tipo de quadro de horarios$/) do
  @pageQuadroHorario.touch_spinner_time_table_type
end

Quando(/^tocar na opção de Disciplinas Online$/) do
  @pageQuadroHorario.touch_online_courses
end

Quando(/^tocar na aba de Domingo$/) do
  @pageQuadroHorario.touch_sunday_tab
end

######### ENTãO #########
Então (/^devo vizualizar as disciplinas relacionadas para este dia$/) do
  @pageQuadroHorario.validate_sunday_classes_is_on_page
end

Então(/^devo ver um aviso sobre a não inscrição em disciplinas online$/) do
  @pageQuadroHorario.validate_no_online_courses_message
end

Então(/^devo visualizar o horario da disciplina de "(.*?)"$/) do |disciplina_nome|
  @pageQuadroHorario.validate_course_is_on_page(disciplina_nome)
end

Então(/^devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario$/) do
  @pageQuadroHorario.validate_no_schedule_available
end

Então(/^devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar matrículado em nenhuma disciplina$/) do
  @pageQuadroHorario.validate_no_class_registration
end
