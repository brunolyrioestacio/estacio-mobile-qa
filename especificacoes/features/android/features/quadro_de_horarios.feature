# language: pt
Funcionalidade: Quadro De Horários
Contexto:
  Dado que estou na tela de Login

#201502468361#
Cenário: Visualização de Quadro de Horario - Aluno exclusivamente presencial
  Dado que preenchi o campo de matrícula com uma matricula exclusivamente presencial do período vigente
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  E que apenas disciplinas presenciais estão sendo listadas
  Então devo visualizar o horario da disciplina de "Tópicos Especiais"

#201401359558#
Cenário: Visualização de Quadro de Horario - Aluno Flex
  Dado que preenchi o campo de matrícula com uma matricula flex do período vigente
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  E que estou visualizando a disciplina de Modelagem de Sistemas
  Quando tocar no combo box de escolha de tipo de quadro de horarios
  E tocar na opção de Disciplinas Online
  Então devo visualizar o horario da disciplina de "Arquitetura de Sistemas Distribuídos"

#201407212771#
Cenário: Visualização de Quadro de Horario - Aluno exclusivamente EAD
  Dado que preenchi o campo de matrícula com uma matricula exclusivamente de EAD do período vigente
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  E que apenas disciplinas online estão sendo listadas
  Então devo visualizar o horario da disciplina de "Gerenciamento de Aquisições"

@reinstall
Cenário: Visualização de Quadro de Horários - Aluno sem disciplinas
  Dado que preenchi o campo de matrícula com uma matricula que não possui disciplinas escolhidas
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a indisponibilidade de consulta ao quadro de horario

@naomatriculado
@reinstall
Cenário: Visualização de Notas - Aluno não matriculado
  Dado que preenchi o campo de matrícula com uma matricula não relacionada ao período vigente
  E preenchi o campo de senha
  Quando tocar no botão de login
  Dado que estou na tela inicial
  Quando tocar no botão de quadro de horarios
  Dado que estou na tela de quadro de horarios
  Então devo ver uma mensagem de aviso sobre a falta de horarios devido ao aluno não estar matriculado em nenhuma disciplina
