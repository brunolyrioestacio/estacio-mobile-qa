#!/bin/bash
# ----------------------------------------------------------------------------
# Uncomment the next line to enable debug
# set -x
#
# $1 -> parameter with the name of the apk
# $2 -> parameter to indicates the tapume to run. Can be null and can have other 2 values: must or should

## CODE BEGIN  #############################################################
[ $# -lt 1 ] && echo "Wrong number of parameters." && exit 1

# Counting the number of lines returned from the command ADB devices
# This command will return at least 2 as result, because of one header line and one empty line at end
# So if the result is less than or equal 2, it means that there are no devices or emulators connected
number_of_devices=$($ADB devices | wc -l)
[ $number_of_devices -le 2 ] && echo "There are no devices or emulators connected!" && exit 1

echo Inicio da execução: $(date)

# Creating the reports folder for the html format
reports_path="$WORKSPACE/reports-cal"
mkdir $reports_path

#resign the apk before run
cd $WORKSPACE/especificacoes
calabash-android resign $1

for device in $($ADB devices | grep "device$" | cut -f 1)
do
  cd $WORKSPACE/especificacoes
  # Creates the reports folder
  mkdir "$reports_path"/"$device"
  echo "Device "$device": teste em execução.."
  ADB_DEVICE_ARG=$device SCREENSHOT_PATH="$reports_path"/"$device"/ calabash-android run $1 -p android -f 'Calabash::Formatters::Html' -o "$reports_path"/"$device"/reports.html -f junit -o "$reports_path"/"$device"
  # Calabash has a problem with images relative path, the command above will replace all the images path on the
  # html report file to be a relative path
  sed -i.bak 's|'"$reports_path"/"$device"/'||g' "$reports_path"/"$device"/reports.html
  echo "Device "$device": teste finalizado."
done
wait

echo Fim da execução: $(date)
## CODE END  #############################################################
