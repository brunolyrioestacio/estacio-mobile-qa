class FaltasScreen < AndroidScreenBase
  # The screen identificator
  trait(:trait)                 { "* id:'#{layout_name}'" }

  # Declare all the elements of this screen
  element(:layout_name)         { 'activity_student_frequency' }
  # element(:button)              { 'insert_button_identificator' }

  # Declare all actions of this screen
  # action(:touch_button) {
  #   touch("* id:'#{button}'")
  # }
end
