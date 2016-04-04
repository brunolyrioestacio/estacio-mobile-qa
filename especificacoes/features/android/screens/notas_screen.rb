class NotasScreen < AndroidScreenBase
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'student_grades_view' }

  def grades_is_on_page?
    is_on_page? "Estrutura de dados"
    is_on_page? "3.0" #AV1#
    is_on_page? "8.0" #AV2#
    is_on_page? "9.0" #AV3#
  end

  def validate_no_grades
    is_on_page? "Não existem lançamentos de notas para você no Período Acadêmico vigente!"
  end

  def validate_no_registration
    is_on_page? "Aluno não está matriculado em nenhum Período Acadêmico vigente."
  end
end
