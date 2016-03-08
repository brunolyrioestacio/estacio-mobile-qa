# language: pt
Funcionalidade: Quadro De Horários
Contexto:
  Dado que estou na tela de Login

#201502468361#
Cenário: Visualização de Quadro de Horario - Aluno matriculado exclusivamente em disciplinas presenciais
  Dado que realizei o processo de login usando uma matrícula "exclusivamente presencial" do período vigente
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  E que estou visualizando o horario da disciplina de "Tópicos Especiais"
  Quando tocar no spinner de escolha de tipo de quadro de horarios
  E tocar na opção de Disciplinas Online
  Então devo ver um aviso sobre a não inscrição em disciplinas online

#201401359558#
Cenário: Visualização de Quadro de Horario - Aluno Flex
  Dado que realizei o processo de login usando uma matrícula "flex" do período vigente
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  E que estou visualizando o horario da disciplina de "Modelagem de Sistemas"
  Quando tocar no spinner de escolha de tipo de quadro de horarios
  E tocar na opção de Disciplinas Online
  Então devo visualizar o horario da disciplina de "Arquitetura de Sistemas Distribuídos"

#201407212771#s
Cenário: Visualização de Quadro de Horario - Aluno exclusivamente EAD
  Dado que realizei o processo de login usando uma matrícula "exclusivamente de EAD" do período vigente
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo visualizar o horario da disciplina de "Gerenciamento de Aquisições"

@reinstall
Cenário: Visualização de Quadro de Horários - Aluno sem disciplinas
  Dado que realizei o processo de login usando uma matrícula uma matrícula que não possui disciplinas escolhidas
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario

@naomatriculado
@reinstall
Cenário: Visualização de Notas - Aluno não matriculado
  Dado que realizei o processo de login usando uma matrícula "que está fora" do período vigente
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar  matrículado em nenhuma disciplina
