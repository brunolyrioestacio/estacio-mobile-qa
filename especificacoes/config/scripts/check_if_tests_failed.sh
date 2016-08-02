# Looking for errors on the report files and returns an error
cd "$WORKSPACE/reports-cal"
TESTS_RESULT="Ok"
for folder in *
do
  #Validating if the file is empty, if it so, then the result should be 'Failed'
  test -s $folder/lslsl
  if [[ $? == 0 ]]
  then
    if egrep '[0-9]+ failed' "$folder/lslsl"
    then
	     TESTS_RESULT="Failed"
    fi
  else
    TESTS_RESULT="Failed"
  fi
done
