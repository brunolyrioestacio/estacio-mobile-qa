# language: pt
Funcionalidade: Push (Somente Android)

  Contexto:
    Dado que estou logado

  Cenário: Notificações Push
    Dado que enviei uma mensagem Push para devices Android
    Quando tocar no botão de Notificações
    Então devo estar na tela de Notificações
    E devo ver a mensagem Push enviada previamente
