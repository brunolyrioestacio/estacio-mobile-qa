M = Hash['exclusivamente presencial' => '201502468361', 'flex' => '201401359558',
         'exclusivamente de EAD' => '201407212771', 'que está fora' => '201402031831',
         'sem pendencias de atendimento' => '200301489494',
         'que não possui requerimentos' => '',
         'comum' => '201402389388',
         'com CR em branco em algum dos períodos' => '201001174666',
         'que possui requerimentos' => '201401359558',
         'que possui aulas aos domingos' => '201312054001',
         'com 3 atendimentos em aberto' => '200501002475',
         'com provas presenciais' => '201402389388',
         'com provas online' => '201402389388',
         'que não possui provas online marcadas' => '201606006665',
         'que não possui provas presenciais marcadas' => '201606006665',
         'sem boletos pendentes' => '200602109496',
         'sem boletos não pendentes' => '201503251357',
         'com boletos dos dois tipos' => '201506715583',
         'com boletos pendentes' => '201304068676',
         'sem email principal' => '201402051311',
         'com email principal' => '201506715583',
         'de graduação presencial' => '201401359558',
         'de graduação EAD' => '201512955639',
         'não ativa' => '200902006765',
         'que não possui disciplinas escolhidas' => '200602091643',
         'que não possui notas lançadas' => '201301287555',
         'não relacionada' => '201402031831'
        ]
Dado(/^que realizei o processo de login usando uma matrícula "(.*?)" do período vigente$/) do |tipo_matricula|
  matricula = M[tipo_matricula]
  @pageLogin.enter_matricula(matricula)
  steps %Q{
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
  }
end

Dado(/^que estou logado$/) do
  begin
    @pageHome = page(HomeScreen).await(timeout: 5)
  rescue
    steps %Q{
    Dado que estou na tela de Login
    E preenchi o campo de matrícula
    E preenchi o campo de senha
    Quando tocar no botão de login
    Então devo ver a tela inicial
    }
  end
end

Dado(/^que realizei o processo de login usando uma matrícula "(.*?)"$/) do |tipo_matricula|
  matricula = M[tipo_matricula]
  @pageLogin.enter_matricula(matricula)
  steps %Q{
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
  }
end

Quando(/^navegar até a funcionalidade de (.*?)$/) do |nome_funcionalide|
  @page_home = page(HomeScreen).await(timeout: 5)
  case nome_funcionalide
  when 'Atendimento Agendado'
    @page_home.navigate_to_scheduled_service
    @page_atendimento = page(AtendimentoAgendadoScreen).await(timeout: 5)
  when 'boletos'
    @page_home.navigate_to_bank_slip
    @page_bank_slip = page(BoletosScreen).await(timeout: 5)
  when 'Datas de provas'
    @page_home.navigate_to_exam_dates
    @page_data = page(DataDeProvaScreen).await(timeout: 5)
  when 'Frequência'
    @page_home.navigate_to_student_attendance
    @page_frequencia = page(FrequenciaScreen).await(timeout: 5)
  when 'Notas de Provas'
    @page_home.navigate_to_student_grades
    @page_notas = page(NotasScreen).await(timeout: 5)
  when 'Histórico Escolar'
    @page_home.navigate_to_school_records
    @page_historico_escolar = page(HistoricoEscolarScreen).await(timeout: 5)
  when 'Quadro de Horários'
    @page_home.navigate_to_timesheet
    @page_quadro_horario = page(QuadroDeHorariosScreen).await(timeout: 5)
  when 'Requerimentos'
    @page_home.navigate_to_requirements
    @page_requerimentos = page(RequerimentosScreen).await(timeout: 5)
  end
end
