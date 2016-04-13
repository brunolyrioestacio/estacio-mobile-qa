# language: pt
Funcionalidade:

  Contexto:
    Dado que estou na tela de Login

  Cenário: Consultar Requerimento - Aluno sem requerimentos
    Dado que realizei o processo de login usando uma matrícula "que não possui requerimentos" do período vigente
    Quando tocar no botão de Requerimentos
    Dado que estou na tela de Requerimentos
    Então ver uma mensagem sobre a falta de requerimentos existentes abertos ou concluídos

  Cenário: Consultar Requerimento
    Dado que realizei o processo de login usando uma matrícula "que possui requerimentos" do período vigente
    Quando tocar no botão de Requerimentos
    Dado que estou na tela de Requerimentos
    Então ver uma lista de requerimentos existentes abertos ou concluídos
