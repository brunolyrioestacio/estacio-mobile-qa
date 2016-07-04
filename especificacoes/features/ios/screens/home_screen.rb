class HomeScreen < IOSScreenBase
   trait(:trait)                      { "* marked:'#{layout_name}'" }
   element(:layout_name)              { 'homeView' }
   element(:entendi_button)           { 'OK, entendi' }
   element(:outras_funcoes_button)    { "Outras\nFunções" }
   element(:sair_button)              { 'Sair' }
   element(:banner)                   { 'bannerView' }
   element(:banner_view)              { 'bannerDetailView' }
   element(:matricula_container)      { 'dash_matricula' }
   element(:atalho_button)            { "Adicionar\num atalho" }
   element(:manual_button)            { 'Manual do Aluno' }
   element(:notas_button)             { 'Notas' }
   element(:quadro_button)            { 'Quadro de Horários' }
   element(:frequencia_button)        { 'Frequência' }
   element(:data_prova_button)        { 'Data de Provas' }
   element(:historico_escolar_button) { 'Histórico Escolar' }
   element(:atendimento_button)       { 'Atendimento Agendado' }
   element(:requerimento_button)      { 'Requerimento/Reclamação' }
   element(:side_menu)                { 'menuButton' }

   def tocar_botao_entendi
     touch("* marked:'#{entendi_button}'")[1]
   end

   def touch_side_menu
     touch("* marked:'#{side_menu}'")
     sleep 3
   end

   def tocar_botao_outras_funcoes
     touch("* text:'#{outras_funcoes_button}'")
   end

   def tocar_botao_sair
     touch("* marked:'#{sair_button}'")
   end

   def tocar_banner
     touch("* marked:'#{banner}'")
   end

   def tocar_detalhe_banner
     touch("* marked:'#{banner_view}'")
   end

   def touch_registration
     touch("* marked:'#{matricula_container}'")
   end

   def tocar_adicionar_atalho
     touch("* text:'#{atalho_button}'")
   end

   def tocar_botao_manual_aluno
     touch("* marked:'#{manual_button}'")
   end

   def tocar_botao_notas_aluno
     touch("* marked:'#{notas_button}'")
   end

   def tocar_botao_quadro
     touch("* marked:'#{quadro_button}'")
   end

   def tocar_botao_frequencia_aluno
     touch("* text:'#{frequencia_button}'")
   end

   def tocar_botao_requerimento
     touch("* marked:'#{requerimento_button}'")
   end

   def tocar_botao_historico_escolar
     touch("* marked:'#{historico_escolar_button}'")
   end

   def tocar_botao_data_de_prova
     touch("* marked:'#{data_prova_button}'")
   end

   def tocar_botao_atendimento
     touch("* marked:'#{atendimento_button}'")
   end

   def alerta_logout_is_visible?
     is_on_page? 'Deseja mesmo sair?'
   end

   def estou_no_detalhe_do_banner
     query("* marked:'#{banner_view}'").nil?
   end
end
