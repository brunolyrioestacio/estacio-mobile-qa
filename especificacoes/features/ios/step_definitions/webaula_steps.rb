######### DADO #########

######### QUANDO #########
Quando(/^tocar no botão de webaula$/) do
  @pageHome.touch_webaula_button
end

######### ENTAO #########
Então(/^devo estar logado na interface webaula$/) do
  @page_webaula = page(WebaulaScreen).wait(timeout: 5)
  @page_webaula.validate_student_is_logged_in
end

Então(/^devo visualizar a tela inicial$/) do
  @page_webaula.validate_webaula_is_on_page
end
