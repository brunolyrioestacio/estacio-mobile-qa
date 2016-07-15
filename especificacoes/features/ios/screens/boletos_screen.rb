class BoletosScreen < IOSScreenBase
  # Identificador da tela
  trait(:trait)                     { "* id:'#{layout_name}'" }

  element(:layout_name)             { 'invoiceTabView' }
  element(:bank_slip_item)          { 'invoiceHeaderArrow' }
  element(:copy_button)             { 'invoiceDetailCopyButton' }
  element(:send_email_button)       { 'invoiceDetailSendButton' }
  element(:second_bank_slip_button) { 'invoiceOpenDetail' }
  element(:optional_email_field)    { 'invoiceDetailOptionalEmail' }
  element(:pending_tab)             { 'Pendentes' }
  element(:not_pending_tab)         { 'Não Pendentes' }
  element(:primary_email_label)     { 'Principal:' }
  element(:view_to_hide_keyboard)   { 'invoiceDetailOrLabel' }
  OPTIONAL_EMAIL = 'meupai.omeupai@gmail.com'.freeze
  NO_PENDING_BANK_SLIPS_MESSAGE = 'Você não possui nenhum boleto em processamento, com pagamento pendente a vencer para consulta.'.freeze
  NO_NOT_PENDING_BANK_SLIPS_MESSAGE = 'Você não possui nenhum boleto pago, negociado, bloqueado ou cancelado para consulta.'.freeze
  COPY_MESSAGE = 'Código de barras copiado com sucesso!'.freeze
  SENT_EMAIL_MESSAGE = 'Boleto enviado com sucesso'.freeze

  def touch_pending_bank_slips
    sleep 2
    touch("* marked:'#{pending_tab}'")
  end

  def touch_not_pending_bank_slips
    sleep 2
    touch("* marked:'#{not_pending_tab}'")
  end

  def touch_pending_bank_slip_item_and_go_to_second_copy
    sleep 2
    touch("* id:'#{bank_slip_item}'")
    sleep 1
    touch("* id:'#{second_bank_slip_button}'")
  end

  def touch_copy_button
    sleep 1
    touch("* id:'#{copy_button}'")
  end

  def fill_optional_email_field_and_validate_no_primary_email_is_on_page
    sleep 3
    is_on_page?(primary_email_label, false)
    enter OPTIONAL_EMAIL, optional_email_field
    touch("* marked:'#{view_to_hide_keyboard}'")
  end

  def touch_send_email_button
    drag_until_element_is_visible(:down, send_email_button, nil, 5)
    touch("* id:'#{send_email_button}'")
  end

  def fill_optional_email_field
    sleep 2
    enter OPTIONAL_EMAIL, optional_email_field
    touch("* marked:'#{view_to_hide_keyboard}'")
  end

  def validate_no_pending_bank_slips_message_is_on_page
    is_on_page? NO_PENDING_BANK_SLIPS_MESSAGE
  end

  def validate_no_not_pending_bank_message_slips_is_on_page
    is_on_page? NO_NOT_PENDING_BANK_SLIPS_MESSAGE
  end

  def validate_both_bank_slips_is_on_page
    is_on_page?(NO_PENDING_BANK_SLIPS_MESSAGE, false)
    is_on_page? 'Vencimento'
    touch_not_pending_bank_slips
    is_on_page?(NO_NOT_PENDING_BANK_SLIPS_MESSAGE, false)
    is_on_page? 'Vencimento'
  end

  def validate_copy_message_is_on_page
    is_on_page? COPY_MESSAGE
  end

  def validate_sent_email_message_is_on_page
    sleep 3
    is_on_page? SENT_EMAIL_MESSAGE
  end
end
