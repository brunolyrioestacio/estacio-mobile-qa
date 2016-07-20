######### DADO #########
Dado(/^que estou na tela de Notas$/) do
  @page_notas = page(NotasScreen).await(timeout: 5)
end

Dado(/^que preenchi o campo de matrícula com uma matricula do período vigente$/) do
  @pageLogin.enter_matricula("201401359558")
end

Dado(/^que preenchi o campo de matrícula com uma matricula que não possui notas lançadas$/) do
  @pageLogin.enter_matricula("201301287555")
end

Dado(/^que preenchi o campo de matrícula com uma matricula não relacionada ao período vigente$/) do
  @pageLogin.enter_matricula("201402031831")
end

######### QUANDO #########

######### ENTÃO #########
Então (/^devo vizualizar as notas da disciplina de Estrutura de Dados$/) do
  @page_notas.grades_is_on_page?
end

Então(/^devo vizualizar as notas das disciplinas em que estou matriculado$/) do
  @page_notas.grades_is_on_page?
end

Então (/^devo ver uma mensagem de aviso sobre a falta de notas lançadas$/) do
  @page_notas.validate_no_grades
end

Então (/^devo ver uma mensagem de aviso sobre a falta de notas lançadas devido ao aluno não estar matriculado$/) do
  @page_notas.validate_no_registration
end
