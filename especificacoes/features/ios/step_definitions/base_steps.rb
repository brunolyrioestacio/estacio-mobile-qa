######### DADO #########
Dado(/^que estou logado$/) do
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
    }
  rescue
    #Ja estou logado, posso seguir adiante.
  end
end
