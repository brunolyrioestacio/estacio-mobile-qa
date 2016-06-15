matricula = '201402389388'
cpf = '137.942.927-74'
Quando(/^tocar no menu lateral$/) do
  @pageHome.touch_side_menu
end
E(/^tocar na matricula$/) do
  @pageHome.touch_registration
end
Então(/^devo estar na tela da Carteira Digital do Estudante$/) do
  @page_carteirinha_screen = page(CarteiraDigitalScreen).await(timeout: 5)
end

E(/^devo ver meus dados pessoais$/) do
  @page_carteirinha_screen.validate_personal_informations_is_on_page matricula, cpf
end
