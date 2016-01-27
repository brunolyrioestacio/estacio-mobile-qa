# language: pt
Funcionalidade: Login
Através dessa funcionalidade é possível realizar o processo de autentificação do aluno no sistema SIA Aluno

  Cenário: Aceite da permissão de push
    Dado que estou na tela de OnBoarding
    Então devo aceitar a permissão de push
    E devo percorrer o tutorial

  Cenário: Negação da permissão de push
    Dado que estou na tela de OnBoarding
    Então devo negar a permissão de push
    E devo percorrer o tutorial
