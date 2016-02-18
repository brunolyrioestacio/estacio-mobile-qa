echo "<HTML>"
echo "<HEAD>"
echo "<meta charset=\"UTF-8\">"
echo "<TITLE>"
echo "Relatório de Testes"
echo "</TITLE>"
echo "</HEAD>"
echo "<BODY>"
echo "<H1>"
echo "Relatório dos Devices "
echo "</H1>"
for device_name in *
do
  if [ "$device_name" != "reports.html" ]
  then
    echo "<br><a href=\"http://cimobilerj.concretecorp.com.br/job/$JOB_NAME/ws/reports-cal/$device_name/reports.html\">$device_name</a></br>"
  fi
done
echo "</BODY>"
echo "</HTML>"
