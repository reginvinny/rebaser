#---Rebaser Install File---#
echo " "
echo "#######################################"
echo "#           Rebaser                   #"
echo "#        Author: Regin Vinny          #"
echo "#######################################"
echo " "
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
echo ' '
echo ' '
echo "---------------Rebaser Install Complete---------------"
echo ' '
echo ' '
cat ~/rebaser/install_utils/help
echo ' '
echo ' '
echo "---------------Close this terminal window to complete installation---------------"
echo ' '
echo ' '
exit
