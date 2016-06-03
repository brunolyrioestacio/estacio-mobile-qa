class PushScreen < AndroidScreenBase
  trait(:trait)                   { "* id:'#{layout_name}'" }

  element(:layout_name)           { 'list_notification_coordinator' }
  # element(:button)              { 'insert_button_identificator' }

  # action(:touch_button) {
  #   touch("* id:'#{button}'")
  # }
  def validate_push_message_is_on_page(n)
    is_on_page? "Test QA #{n}"
  end
end
