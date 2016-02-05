######### DADO #########
Dado(/^que estou na tela inicial$/) do
  @pageHome = page(HomeScreen).await(timeout:5)
end

######### QUANDO #########


###########E############

######### ENTãO #########

Então(/^devo ver os banners$/) do
  @pageHome.banner_is_visible
end
