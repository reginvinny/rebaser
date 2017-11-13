#---Rebaser Uninstall File---#

sed -i '' '/rebaser_utlil.sh/d' ~/.zshrc
sed -i '' '/rebaser_utlil.sh/d' ~/.bash_profile

sed -i '' '/rebaser_uninstall.sh/d' ~/.zshrc
sed -i '' '/rebaser_uninstall.sh/d' ~/.bash_profile
cd ~
rm -rf rebaser
clear
echo " "
echo " "
echo "---------------Rebaser Uninstall Complete---------------"
echo " "
echo " "

