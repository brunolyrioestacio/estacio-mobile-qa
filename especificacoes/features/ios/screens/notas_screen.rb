class NotasScreen < IOSScreenBase
  # Identificador da tela
  trait(:trait)                 { "* marked:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'gradesView' }

  def grades_is_on_page
    is_on_page? "Estrutura de dados"
    is_on_page? "3.5" #AV1#
    is_on_page? "9.5" #AV2#
    is_on_page? "7.9" #AV3#
  end

  def validate_no_grades
    is_on_page? "Não existem lançamentos de notas para você no Período Acadêmico vigente!"
  end

  def validate_no_registration
    is_on_page? "Aluno não está matriculado em nenhum Período Acadêmico vigente."
  end
end
