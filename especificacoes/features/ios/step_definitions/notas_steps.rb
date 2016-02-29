######### DADO #########
Dado(/^que estou na tela de Notas$/) do
  @pageNotas = page(NotaScreen).await(timeout:5)
end
######### QUANDO #########

######### ENTãO #########
Então (/^devo vizualizar as notas da disciplina de Estrutura de Dados$/) do
  @pageNota.grades_is_on_page?
end

Então (/^devo ver uma mensagem de aviso sobre a falta de notas lançadas$/) do
  @pageNota.validate_no_grades
end

Então (/^devo ver uma mensagem de aviso sobre a falta de notas lançadas devido ao aluno não estar matriculado$/) do
  @pageNota.validate_no_class_registration
end
