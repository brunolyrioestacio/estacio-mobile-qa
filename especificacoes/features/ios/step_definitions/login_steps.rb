######### DADO #########
Dado(/^que estou na tela de OnBoarding$/) do

end

######### QUANDO #########

###########E############


######### ENTãO #########
Então(/^devo percorrer o tutorial$/) do
  touch("* marked:'skipTourButton'")
end
