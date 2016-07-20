# language: pt
Funcionalidade: Frequência
  Através dessa funcionalidade o aluno consegue visualizar suas informações de frequência das disciplinas
em que está matriculado. Assim, para cada disciplina, é possível ver sua carga horária, total de
faltas e o limite de faltas permitidas. Caso o aluno seja da modalidade de EAD, só é mostrada a carga
horária de cada disciplina.

Contexto:
  Dado que pulei o tutorial
  E estou na tela de Login

Cenário: Visualização da frequência de um aluno presencial
  Dado que realizei o processo de login usando uma matrícula "de graduação presencial" do período vigente
  Quando navegar até a funcionalidade de Frequência
  Então devo visualizar informações de porcentagem de faltas das disciplinas

@reinstall
Cenário: Visualização da frequência de um aluno de graduação EAD
  Dado que realizei o processo de login usando uma matrícula "de graduação EAD" do período vigente
  Quando navegar até a funcionalidade de Frequência
  Então não devo visualizar informações de porcentagem de faltas

@reinstall
Cenário: Visualização da frequência de um aluno não ativo
  Dado que realizei o processo de login usando uma matrícula "não ativa"
  Quando navegar até a funcionalidade de Frequência
  Então devo ver uma mensagem de aviso sobre a falta de frequências para o aluno

@reinstall
Cenário: Visualização da frequência de um aluno não matriculado em disciplinas
  Dado que realizei o processo de login usando uma matrícula "que não possui disciplinas escolhidas"
  Quando navegar até a funcionalidade de Frequência
  Então devo ver uma mensagem de aviso sobre a falta de frequências para o aluno
