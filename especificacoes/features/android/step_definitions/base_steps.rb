M = Hash["exclusivamente presencial"=>"201502468361","flex"=>"201401359558",
        "exclusivamente de EAD"=>"201407212771","que está fora"=>"201402031831",
        "sem pendencias de atendimento"=>"201512955639",
        "que não possui requerimentos"=>"",
        "que possui requerimentos"=>"201401359558"
        ]
Dado(/^que realizei o processo de login usando uma matrícula "(.*?)" do período vigente$/) do |tipo_matricula|
  matricula = M[tipo_matricula]
  @pageLogin.enter_matricula(matricula)
  steps %Q{
    E preenchi o campo de senha
    Quando tocar no botão de login
    Dado que estou na tela inicial
  }
end
