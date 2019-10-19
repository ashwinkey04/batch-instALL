while true; do
    read -p "Do you wish to install all the apks in this folder(y|Y|yes|n|N|no)?" yn
    case $yn in
        [Yy]* )ls *.apk | sed -e 's/^/adb install '"'"'/' -e 's/$/'"'"'/'| cat >run.sh 
chmod 744 run.sh;./run.sh;rm run.sh; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
