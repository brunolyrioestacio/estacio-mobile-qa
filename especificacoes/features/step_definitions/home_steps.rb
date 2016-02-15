
Quando(/^toquei na matricula$/)do
  @pageHome = page(HomeScreen).await(timeout: 10)
  @pageHome.tocar_matricula
end
Quando(/^estou na tela da Carteira Digital do Estudante$/)do
  @pageCarteirinha = page(CarteiraDigitalScreen).await(timeout: 10)
end
Então (/^devo ver meus dados pessoais$/) do
  matricula = ""
  cpf = ""
  @pageCarteirinha.valida_dados_na_tela matricula, cpf
end
