######### DADO #########
Dado(/^que estou na tela de Notas$/) do
  @pageNotas = page(NotasScreen).await(timeout:5)
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

######### ENTãO #########
Então (/^devo vizualizar as notas da disciplina de Estrutura de Dados$/) do
  @pageNotas.grades_is_on_page?
end

Então (/^devo ver uma mensagem de aviso sobre a falta de notas lançadas$/) do
  @pageNotas.validate_no_grades
end

Então (/^devo ver uma mensagem de aviso sobre a falta de notas lançadas devido ao aluno não estar matriculado$/) do
  @pageNotas.validate_no_registration
end
