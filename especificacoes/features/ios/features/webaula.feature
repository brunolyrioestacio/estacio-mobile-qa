# language: pt
Funcionalidade: Web Aula (Somente iOS)
  Através desta funcionalidade, é possível que o aluno tenha acesso a interface de webaula através do app.

  Contexto: Login
    Dado que pulei o tutorial
    E estou na tela de Login

  Cenário: Acesso a interface de webaula
    Dado que realizei o processo de login usando uma matrícula "que tenha disciplinas online"
    Quando tocar no botão de webaula
    Então devo visualizar a tela inicial 
    E devo estar logado na interface webaula
