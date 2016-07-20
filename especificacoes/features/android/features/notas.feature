# language: pt
Funcionalidade: Notas de Provas
  Através dessa funcionalidade é possível visualizar as notas das provas das disciplinas em que o aluno está
inscrito, caso as mesmas ja tenham sido lançadas.

  Contexto:
    Dado que estou na tela de Login

  Cenário: Visualização de Notas
    Dado que realizei o processo de login usando uma matrícula "comum" do período vigente
    Quando navegar até a funcionalidade de Notas de Provas
    Então devo vizualizar as notas das disciplinas em que estou matriculado

  @reinstall
  Cenário: Visualização de Notas - Aluno sem notas
    Dado que realizei o processo de login usando uma matrícula "que não possui notas lançadas" do período vigente
    Quando navegar até a funcionalidade de Notas de Provas
    Então devo ver uma mensagem de aviso sobre a falta de notas lançadas

  @reinstall
  Cenário: Visualização de Notas - Aluno não matriculado
    Dado que realizei o processo de login usando uma matrícula "não relacionada" do período vigente
    Quando navegar até a funcionalidade de Notas de Provas
    Então devo ver uma mensagem de aviso sobre a falta de notas lançadas devido ao aluno não estar matriculado
