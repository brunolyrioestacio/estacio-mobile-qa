######### QUANDO #########

Quando(/^clicar na aba de boletos pendentes$/) do
  @page_bank_slip.touch_pending_bank_slips
end

Quando(/^clicar na aba de boletos não pendentes$/) do
  @page_bank_slip.touch_not_pending_bank_slips
end

Quando(/^escolher um dos boletos pendentes e navegar até sua opção de segunda via$/) do
  @page_bank_slip.touch_pending_bank_slip_item_and_go_to_second_copy
end

Quando(/^clicar no botão de código de barras$/) do
  @page_bank_slip.touch_copy_button
end

Quando(/^preencher o campo de email opcional, visto que não tenho email principal$/) do
  @page_bank_slip.fill_optional_email_field_and_validate_no_primary_email_is_on_page
end

Quando(/^clicar no botão de envio por email$/) do
  @page_bank_slip.touch_send_email_button
end

Quando(/^não preencher o campo de email alternativo$/) do
  # Nada a fazer aqui, apenas nao preencher o campo, de fato.
end

Quando(/^preencher o campo de email opcional$/) do
  @page_bank_slip.fill_optional_email_field
end
######### ENTAO #########
Então(/^devo visualizar uma mensagem sobre a falta de boletos pendentes$/) do
  @page_bank_slip.validate_no_pending_bank_slips_message_is_on_page
end

Então(/^devo visualizar uma mensagem sobre a falta de boletos não pendentes$/) do
  @page_bank_slip.validate_no_not_pending_bank_message_slips_is_on_page
end

Então(/^devo visualizar boletos dos dois tipos$/) do
  @page_bank_slip.validate_both_bank_slips_is_on_page
end

Então(/^devo visualizar uma mensagem de confirmação da cópia$/) do
  @page_bank_slip.validate_copy_message_is_on_page
end

Então(/^devo visualizar uma mensagem de confirmação de email enviado$/) do
  @page_bank_slip.validate_sent_email_message_is_on_page
end
