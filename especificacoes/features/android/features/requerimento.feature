# language: pt
Funcionalidade:

  Contexto:
    Dado que estou na tela de Login

  @semReq
  @reinstall
  Cenário: Consultar Requerimento - Aluno sem requerimentos
    Dado que realizei o processo de login usando uma matrícula "que não possui requerimentos" do período vigente
    Quando tocar no botão de Requerimentos
    Dado que estou na tela de Requerimentos
    Então devo ver uma mensagem sobre a falta de requerimentos existentes abertos ou concluídos

  @comReq
  @reinstall
  Cenário: Consultar Requerimento
    Dado que realizei o processo de login usando uma matrícula "que possui requerimentos" do período vigente
    Quando tocar no botão de Requerimentos
    Dado que estou na tela de Requerimentos
    Então devo ver uma lista de requerimentos existentes abertos ou concluídos

@CriarReq
@reinstall
  Cenário: Criar Requerimento
    Dado que realizei o processo de login usando uma matrícula "que possui requerimentos" do período vigente
    Quando tocar no botão de Requerimentos
    Dado que estou na tela de Requerimentos
    Quando tocar no botão de criação de Requerimento
    E tocar no botão flutuante de Requerimento
    E escolher uma categoria
    E um tipo de requerimento
    E tocar em próximo para validar as informações do requerimento escolhido
    E tocar em próximo novamente
    E preencher o campo de observação com informações sobre o requerimento
    E tocar em finalizar para abrir o requerimento
    Então devo ver uma mensagem de confirmação da criação de Requerimento

@CriarOuvidoria
@reinstall
  Cenário: Criar Ouvidoria
    Dado que realizei o processo de login usando uma matrícula "que possui requerimentos" do período vigente
    Quando tocar no botão de Requerimentos
    Dado que estou na tela de Requerimentos
    Quando tocar no botão de criação de Requerimento
    E tocar no botão flutuante de Ouvidoria
    E escolher um tipo de ouvidoria
    E tocar em próximo para validar as informações do tipo de ouvidoria escolhida
    E tocar em próximo novamente
    E preencher o campo de observação com informações sobre a ouvidoria
    E tocar em finalizar para abrir o requerimento de ouvidoria
    Então devo ver uma mensagem de confirmação da criação de Ouvidoria

@CriarReclamacao
@reinstall
  Cenário: Criar Reclamação
    Dado que realizei o processo de login usando uma matrícula "que possui requerimentos" do período vigente
    Quando tocar no botão de Requerimentos
    Dado que estou na tela de Requerimentos
    Quando tocar no botão de criação de Requerimento
    E tocar no botão flutuante de Reclamação
    E escolher um tipo de reclamação
    E tocar em próximo para validar as informações do tipo de reclamação escolhida
    E tocar em próximo novamente
    E preencher o campo de observação com informações sobre a reclamação
    E tocar em finalizar para abrir o requerimento de reclamação
    Então devo ver uma mensagem de confirmação da criação de Reclamação
