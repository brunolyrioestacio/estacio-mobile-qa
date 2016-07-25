matricula = '201402389388'
cpf = '137.942.927-74'

E(/^devo ver meus dados pessoais$/) do
  @page_carteirinha.validate_personal_informations_is_on_page matricula, cpf
end
