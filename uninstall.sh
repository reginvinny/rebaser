#---Rebaser Uninstall File---#
cd ~
sed -i '' '/rebaser_utlil.sh/d' ~/.zshrc
sed -i '' '/rebaser_utlil.sh/d' ~/.bash_profile
rm -rf ~/rebaser
clear
echo " "
echo " "
echo "---------------Rebaser Uninstall Complete---------------"
echo " "
echo " "

