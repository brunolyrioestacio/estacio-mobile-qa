# language: pt
Funcionalidade: Matricula
Nesta funcionalidade é possível resgatar a matrícula

  @nobuttonm
  Cenário: Tratamento de exceção do não preenchimento dos campos de identidade e data de nascimento
    Dado que estou na tela de Login
    E toquei no botão de esqueci minha matricula
    Então devo estar na tela de esqueci minha matricula
    Dado que estou na tela de esqueci minha matricula
    E não preenchi o campo de identidade
    E não preenchi o campo de data de nascimento
    Então o botão de continuar deve estar desabilitado

    @nobuttonm
  Cenário: Tratamento de exceção do não preenchimento do campo de identidade
    Dado que estou na tela de Login
    E toquei no botão de esqueci minha matricula
    Então devo estar na tela de esqueci minha matricula
    Dado que estou na tela de esqueci minha matricula
    E não preenchi o campo de identidade
    E preenchi o campo de data de nascimento
    Então o botão de continuar deve estar desabilitado

    @nobuttonm
  Cenário: Tratamento de exceção do não preenchimento do campo de data de nascimento
    Dado que estou na tela de Login
    E toquei no botão de esqueci minha matricula
    Então devo estar na tela de esqueci minha matricula
    Dado que estou na tela de esqueci minha matricula
    E preenchi o campo de identidade
    E não preenchi o campo de data de nascimento
    Então o botão de continuar deve estar desabilitado

    @errorm
  Cenário: Tratamento de exceção do preenchimento do campo de identidade e data de nascimento
    Dado que estou na tela de Login
    E toquei no botão de esqueci minha matricula
    Então devo estar na tela de esqueci minha matricula
    Dado que estou na tela de esqueci minha matricula
    E preenchi o campo de identidade incorretamente
    E preenchi o campo de data de nascimento incorretamente
    Quando tocar no botão de continuar
    Então devo ver um alerta com uma mensagem de erro

    @foi
  Cenário: Resgate de matrícula
    Dado que estou na tela de Login
    E toquei no botão de esqueci minha matricula
    Então devo estar na tela de esqueci minha matricula
    Dado que estou na tela de esqueci minha matricula
    E preenchi o campo de identidade
    E preenchi o campo de data de nascimento
    E tocar no botão de continuar
    Então devo estar na tela com as matrículas do usuário
    Dado que estou na tela com as matrículas do usuário
    E tocar no botão de escolher matrícula
    Então devo estar na tela de login
    E o campo de matrícula deve estar preenchido com a matricula selecionada
