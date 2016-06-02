######### DADO #########
Dado(/^que enviei uma mensagem Push para devices Android$/) do
  @pageHome.send_push
end

######### QUANDO #########
Quando(/^tocar no botão de Notificações$/) do
  @pageHome.touch_notifications_buttons
end

######### ENTAO #########

Então(/^devo estar na tela de Notificações$/) do
  @page_notifications = page(PushScreen).wait(timeout: 5)
end

Então(/^devo ver a mensagem Push enviada previamente$/) do
  @page_notifications.validate_push_message_is_on_page
end
