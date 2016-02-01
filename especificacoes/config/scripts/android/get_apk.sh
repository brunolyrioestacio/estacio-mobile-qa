
AndroidProject_build_output_path=~/Documents/Workspace/Android?Workspace/estacio-mobile-android/app/build/outputs/apk
QA_Android_Artifacts_path=~/Documents/Workspace/QA?Workspace/estacio-mobile-qa/android-output
YELLOW='\033[1;33m'
BLUE='\033[1;49;36m'
echo "${BLUE}A long time ago, in an Android galaxy far far away.."
echo '
                                      /~\
                                     |oo )    Did you hear that?
                                     _\=/_
                    ___            /  __   \
                   / ()\          / /|/.\|\ \
                 _|_____|_        \ \|\_/| | |
                | | === | |        \ |\ /| | |
                |_|  O  |_|        #  _ _/  #
                 ||  O  ||           | | |
                 ||__*__||           | | |
                |~ \___/ ~|          []|[]
                /=\ /=\ /=\          | | |
________________[_]_[_]_[_]_________/_]_[_\________________________'
if [ "$(ls -A $QA_Android_Artifacts_path)" ]
  then
    echo "${YELLOW}removing old apks.."
    rm $QA_Android_Artifacts_path/*
fi

for appk in $(ls $AndroidProject_build_output_path | grep -v unaligned)
do
  echo "Copying new apk: $appk .."
  cp -i $AndroidProject_build_output_path/$appk $QA_Android_Artifacts_path
done
cd ~/Documents/Workspace/QA?Workspace/estacio-mobile-qa/especificacoes
for apk in $(ls -1 $QA_Android_Artifacts_path)
do
  echo "signing apk: $apk .."
  calabash-android resign $QA_Android_Artifacts_path/$apk
done
echo "May the apps be with you \O/"
NC='\033[0m'
echo "${NC}"
