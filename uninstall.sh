#---Rebaser Install File---#
cd ~
git clone https://github.com/reginvinny/rebaser.git
git checkout install
cd rebaser
echo "alias rebaser='sh ~/rebaser/install_utils/rebaser_utlil.sh'" >> ~/.zshrc
echo "alias rebaser='sh ~/rebaser/install_utils/rebaser_utlil.sh'" >> ~/.bash_profile
echo "---------------REBASER Installation Complete---------------"

