#---Rebaser Install File---#
cd ~
git clone https://github.com/reginvinny/rebaser.git
git checkout install
cd rebaser
echo "alias rebaser='sh ~/rebaser/install_utils/rebaser_utlil.sh'" >> ~/.zshrc
echo "alias rebaser='sh ~/rebaser/install_utils/rebaser_utlil.sh'" >> ~/.bash_profile
echo "alias uninstall_rebaser='sh ~/rebaser/uninstall.sh'" >> ~/.zshrc
echo "alias uninstall_rebaser='sh ~/rebaser/uninstall.sh'" >> ~/.bash_profile

clear
echo " "
echo " "
echo "---------------Rebaser Install Complete---------------"
echo " "
echo " "

echo  Rebaser usage

echo - Checkout feature branch
echo - Enter "rebaser" command to sync with master

echo  Rebaser Un-installation steps
echo - Use "uninstall_rebaser" command
echo " "
echo " "
