class QuadroDeHorariosScreen < AndroidScreenBase
  # Identificador da tela
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare todos os elementos da tela
  element(:layout_name)         { 'timesheet_activity' }

  def schedule_is_on_page?
    is_on_page? "MODELAGEM DE SISTEMAS"
  end

  def validate_no_schedule_available
  # is_on_page? "O seu quadro de horário ainda não está disponível para consulta."
    pending
  end

  def validate_no_class_registration
    is_on_page? "Você não está matriculado em nenhuma disciplina no Período Acadêmico vigente!"
  end
end
