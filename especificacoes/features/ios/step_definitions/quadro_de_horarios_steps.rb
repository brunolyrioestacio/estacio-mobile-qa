######### DADO #########

Dado(/^visualizar o horario das disciplinas presenciais do dia corrente da semana$/) do
  @page_quadro_horario.validate_presential_courses_is_on_page
end
Dado(/^visualizar apenas o horario das disciplinas presenciais do dia corrente da semana$/) do
  @page_quadro_horario.validate_only_presential_courses_is_on_page
end
Dado(/^devo visualizar o horario das disciplinas online$/) do
  @page_quadro_horario.validate_online_courses_is_on_page
end
######### QUANDO #########
Quando(/^tocar no botão de escolha de tipo de quadro de horarios$/) do
  @page_quadro_horario.touch_button_time_table_type
end

Quando(/^tocar na opção de Disciplinas Online$/) do
  @page_quadro_horario.touch_online_courses
end

Quando(/^tocar na aba de Domingo$/) do
  @page_quadro_horario.touch_sunday_tab
end

######### ENTAO #########
Então(/^devo vizualizar as disciplinas relacionadas para este dia$/) do
  @page_quadro_horario.validate_sunday_classes_is_on_page
end

Então(/^devo ver um aviso sobre a não inscrição em disciplinas online$/) do
  @page_quadro_horario.validate_no_online_courses_message
end

Então(/^devo visualizar o horario da disciplina de "(.*?)"$/) do |disciplina_nome|
  @page_quadro_horario.validate_course_is_on_page(disciplina_nome)
end

Então(/^devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario$/) do
  @page_quadro_horario.validate_no_schedule_available
end

Então(/^devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar matrículado em nenhuma disciplina$/) do
  @page_quadro_horario.validate_no_class_registration
end
