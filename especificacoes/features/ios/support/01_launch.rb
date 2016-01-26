########################################
#                                      #
#       Important Note                 #
#                                      #
#   When running calabash-ios tests at #
#   www.xamarin.com/test-cloud         #
#   the  methods invoked by            #
#   CalabashLauncher are overridden.   #
#   It will automatically ensure       #
#   running on device, installing apps #
#   etc.                               #
#                                      #
########################################

require 'calabash-cucumber/launcher'

Before do |scenario|
  @calabash_launcher = Calabash::Cucumber::Launcher.new

  @scenario_is_outline = (scenario.class == Cucumber::Ast::OutlineTable::ExampleRow)
  scenario = scenario.scenario_outline if @scenario_is_outline

  scenario_tags = scenario.source_tag_names
  # ENV['FEATURE_NAME'] is just an aux created to store the feature name
  if ENV['FEATURE_NAME'] != scenario.feature.title ||
     ENV['RESET_BETWEEN_SCENARIOS'] == '1' ||
     scenario_tags.include?('@reinstall')
    reinstall_app
    ENV['FEATURE_NAME'] = scenario.feature.title
  end

  unless @calabash_launcher.calabash_no_launch?
    @calabash_launcher.relaunch({:timeout => 300})
    @calabash_launcher.calabash_notify(self)
  end
end

After do |scenario|
  unless @calabash_launcher.calabash_no_stop?
    calabash_exit
    if @calabash_launcher.active?
      @calabash_launcher.stop
    end
  end
end

at_exit do
  launcher = Calabash::Cucumber::Launcher.new
  if launcher.simulator_target?
    launcher.simulator_launcher.stop unless launcher.calabash_no_stop?
  end
end

def device?
  # Check if UUID (ENV['DEVICE_TARGET']) is from a device or a simulator
  # Getting all the simulator's UUID
  uuids = `xcrun simctl list`
  return false if uuids.include? ENV['DEVICE_TARGET']
  return true
end

def reinstall_app
  if !device?
    @calabash_launcher.reset_app_jail
  else
    system "echo 'Installing the app...'"
    # Trying to reinstall the app
    success = system "ios-deploy -r -b #{ENV['APP_BUNDLE_PATH']} -i #{ENV['DEVICE_TARGET']} -t 5 > /dev/null"

    # If the app is not installed the above command will throw an error
    # So we just install the app
    unless success
      success = system "ios-deploy -b #{ENV['APP_BUNDLE_PATH']} -i #{ENV['DEVICE_TARGET']} -t 5 > /dev/null"
      fail 'Error. Could not install the app.' unless
        success # If there is any error raises an exception
    end

    system "echo 'Installed.'"
    sleep(3) # Gives a time to finish the installation of the app in the device
  end
end
