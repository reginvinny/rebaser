#---Rebaser Install File---#
echo ' '
echo '#######################################'
echo '#           Rebaser                   #'
echo '#        Author: Regin Vinny          #'
echo '#######################################'
echo ''
sleep 1
cd ~
git clone https://github.com/reginvinny/rebaser.git
cd rebaser
echo "alias rebaser='sh ~/rebaser/install_utils/rebaser_util.sh'" >> ~/.zshrc
echo "alias rebaser='sh ~/rebaser/install_utils/rebaser_util.sh'" >> ~/.bash_profile
echo "alias uninstall_rebaser='sh ~/rebaser/rebaser_uninstall.sh'" >> ~/.zshrc
echo "alias uninstall_rebaser='sh ~/rebaser/rebaser_uninstall.sh'" >> ~/.bash_profile
echo "alias reinstall_rebaser='sh ~/rebaser/rebaser_reinstall.sh'" >> ~/.zshrc
echo "alias reinstall_rebaser='sh ~/rebaser/rebaser_reinstall.sh'" >> ~/.bash_profile

clear
echo " "
echo " "
echo "---------------Rebaser Install Complete---------------"
echo " "
echo " "

echo  Rebaser usage
echo " "
echo - Checkout feature branch
echo - Enter \'rebaser\' command to sync with master
echo " "
echo " "
echo  Rebaser Uninstallation steps
echo " "
echo - Use \'uninstall_rebaser\' command
echo " "
echo " "
echo  Rebaser Reinstallation steps
echo " "
echo - Use \'reinstall_rebaser\' command
echo " "
echo " "
exit
