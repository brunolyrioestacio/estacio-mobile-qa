# language: pt
Funcionalidade: Quadro De Horarios
Contexto:
  Dado que pulei o tutorial
  E estou na tela de Login

Cenário: Visualização de Quadro de Horario
  Dado que realizei o processo de login usando uma matrícula "exclusivamente presencial" do período vigente
  E toquei no menu lateral
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  E que estou visualizando apenas o horario das disciplinas presenciais do dia corrente da semana
  Quando tocar no botão de escolha de tipo de quadro de horarios
  E tocar na opção de Disciplinas Online
  Então devo ver um aviso sobre a não inscrição em disciplinas online

@Dom
@reinstall
Cenário: Vizualização de Quadro de Horário - Horário Domingo
  Dado que realizei o processo de login usando uma matrícula "que possui aulas aos domingos" do período vigente
  E toquei no menu lateral
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Quando tocar na aba de Domingo
  Então devo vizualizar as disciplinas relacionadas para este dia

@f
@reinstall
Cenário: Visualização de Quadro de Horario - Aluno Flex
  Dado que realizei o processo de login usando uma matrícula "flex" do período vigente
  E toquei no menu lateral
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  E que estou visualizando o horario das disciplinas presenciais do dia corrente da semana
  Quando tocar no botão de escolha de tipo de quadro de horarios
  E tocar na opção de Disciplinas Online
  Então devo visualizar o horario das disciplinas online

@reinstall
Cenário: Visualização de Quadro de Horario - Aluno exclusivamente EAD
  Dado que realizei o processo de login usando uma matrícula "exclusivamente de EAD" do período vigente
  E toquei no menu lateral
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo visualizar o horario da disciplina de "Gerenciamento de Aquisições"

@reinstall
Cenário: Visualização de Quadro de Horários - Aluno sem disciplinas
  Dado que realizei o processo de login usando uma matrícula que não possui disciplinas escolhidas
  E toquei no menu lateral
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario

@naomatriculado
@reinstall
Cenário: Visualização de Quadro de Horários - Aluno não matriculado
  Dado que realizei o processo de login usando uma matrícula "que está fora" do período vigente
  E toquei no menu lateral
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar matriculado em nenhuma disciplina
