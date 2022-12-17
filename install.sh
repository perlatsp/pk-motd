#!/bin/bash
#@author Perlat
# inspired by various scripts on Github and the Wild Internet
clear
install_pk_motd(){
    echo "Downloading script from github..."
    wget -q -O custom-welcome-message.txt https://raw.githubusercontent.com/perlatsp/pk-motd/main/custom-welcome-message.txt
    echo "Moving custom-welcome-message to /etc/update-motd.d/custom-welcome-message ...";
    mv custom-welcome-message.sh /etc/update-motd.d/custom-welcome-message
    echo "Setting permissions..."
    sudo chmod -x etc/update-motd.d/*
    sudo chmod 755 /etc/update-motd.d/custom-welcome-message
    echo "Finished. Logout and login again to see the new welcome message!"
}

echo "Do you want to install Custom LEMP Welcome Message?"
select answer in "Yes" "No"; do
    case $answer in
        Yes ) install_pk_motd; break;;
        No ) echo "OK 🙁, bye now"; exit;;
    esac
done
exit;