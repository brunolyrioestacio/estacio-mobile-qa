
Quando(/^toquei na matricula$/)do
  @pageHome = page(HomeScreen).await(timeout: 10)
  @pageHome.tocar_matricula
end
Quando(/^estou na tela da Carteira Digital do Estudante$/)do
  @pageCarteirinha = page(CarteiraDigitalScreen).await(timeout: 10)
end
Então (/^devo ver meus dados pessoais$/) do
  matricula = "201402389388"
  cpf = "137.942.927-74"
  @pageCarteirinha.valida_dados_na_tela matricula, cpf
end
