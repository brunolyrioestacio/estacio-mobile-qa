# language: pt
Funcionalidade: Quadro De Horários
  Através desta funcionalidade é possível visualizar as disciplinas em que o aluno
está inscrito, através de um quadro de horário contendo-as, separadas pelodia da
semana. É possível visualizar também o quadro de horário das disciplinas online, que
não possuem separação semanal.

  Contexto:
    Dado que pulei o tutorial
    E estou na tela de Login

  Cenário: Visualização de Quadro de Horario - Aluno matriculado exclusivamente em disciplinas presenciais
    Dado que realizei o processo de login usando uma matrícula "exclusivamente presencial" do período vigente
    Quando navegar até a funcionalidade de Quadro de Horários
    E visualizar apenas o horario das disciplinas presenciais do dia corrente da semana
    E tocar no botão de escolha de tipo de quadro de horarios
    E tocar na opção de Disciplinas Online
    Então devo ver um aviso sobre a não inscrição em disciplinas online

  @reinstall
  Cenário: Vizualização de Quadro de Horário - Horário Domingo
    Dado que realizei o processo de login usando uma matrícula "que possui aulas aos domingos" do período vigente
    Quando navegar até a funcionalidade de Quadro de Horários
    E tocar na aba de Domingo
    Então devo vizualizar as disciplinas relacionadas para este dia

  @reinstall
  Cenário: Visualização de Quadro de Horario - Aluno Flex
    Dado que realizei o processo de login usando uma matrícula "flex" do período vigente
    Quando navegar até a funcionalidade de Quadro de Horários
    E visualizar o horario das disciplinas presenciais do dia corrente da semana
    E tocar no botão de escolha de tipo de quadro de horarios
    E tocar na opção de Disciplinas Online
    Então devo visualizar o horario das disciplinas online

  @ead
  @reinstall
  Cenário: Visualização de Quadro de Horario - Aluno exclusivamente EAD
    Dado que realizei o processo de login usando uma matrícula "exclusivamente de EAD" do período vigente
    Quando navegar até a funcionalidade de Quadro de Horários
    Então devo visualizar o horario da disciplina de "Processos de Desenvolvimento de Software"

  @reinstall
  Cenário: Visualização de Quadro de Horários - Aluno sem disciplinas
    Dado que realizei o processo de login usando uma matrícula "que não possui disciplinas escolhidas"
    Quando navegar até a funcionalidade de Quadro de Horários
    Então devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario

  @reinstall
  Cenário: Visualização de Quadro de Horários - Aluno não matriculado
    Dado que realizei o processo de login usando uma matrícula "que está fora" do período vigente
    Quando navegar até a funcionalidade de Quadro de Horários
    Então devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar matrículado em nenhuma disciplina
