M = Hash['exclusivamente presencial' => '201502468361', 'flex' => '201401359558',
         'exclusivamente de EAD' => '201407212771', 'que está fora' => '201402031831',
         'sem pendencias de atendimento' => '200301489494',
         'que não possui requerimentos' => '',
         'que possui requerimentos' => '201401359558',
         'que possui aulas aos domingos' => '201312054001',
         'com 3 atendimentos em aberto' => '200501002475']
######### DADO #########
Dado(/^que realizei o processo de login usando uma matrícula "(.*?)" do período vigente$/) do |tipo_matricula|
  matricula = M[tipo_matricula]
  @pageLogin.enter_matricula(matricula)
  steps %Q{
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
    E interagi com o OnBoarding
  }
end
Dado(/^estou na tela de Login$/) do
  step "que estou na tela de Login"
end
Dado(/^interagi com o OnBoarding$/) do
  step "devo interagir com o OnBoarding"
end
Dado(/^que estou logado$/) do
  begin
    @pageTutorial = page(TutorialScreen).await(timeout:5)
    steps %Q{
      Dado que estou na tela de tutorial
      Quando o pular
      Então devo estar na tela de Login
    }
    steps %Q{
      E preenchi o campo de matrícula
      E preenchi o campo de senha
      Quando tocar no botão de login
      Então devo ver a tela inicial
      Dado que estou na tela inicial
      Então devo interagir com o OnBoarding
    }
  rescue
    @pageHome = page(HomeScreen).await(timeout: 5)
  end
end
Dado (/^que pulei o tutorial e estou logado$/) do
  begin
    @pageTutorial = page(TutorialScreen).await(timeout:5)
    steps %Q{
      Dado que estou na tela de tutorial
      Quando o pular
      Então devo estar na tela de Login
      Dado que estou na tela de Login
      E preenchi o campo de matrícula
      E preenchi o campo de senha
      Quando tocar no botão de login
      Então devo ver a tela inicial
      Dado que estou na tela inicial
    }
  rescue
    @pageHome = page(HomeScreen).await(timeout: 5)
  end
end

Dado(/^que pulei o tutorial$/)do
  begin
    @pageTutorial = page(TutorialScreen).await(timeout:5)
    steps %Q{
      Dado que estou na tela de tutorial
      Quando o pular
      Então devo estar na tela de Login
    }
  rescue
    @pageLogin = page(LoginScreen).await(timeout:5)
  end
end
