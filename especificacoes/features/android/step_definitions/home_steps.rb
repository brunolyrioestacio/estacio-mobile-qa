######### DADO #########

######### QUANDO #########


###########E############


Quando(/^toquei no botão de Manual do Aluno$/) do
  @pageHome.tocar_botao_manual_aluno
end



######### ENTãO #########

Então (/^devo vizualizar o Manual do aluno$/) do
  @pageHome.is_on_page? "Manual do Aluno"
end
