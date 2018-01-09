#---Rebaser Uninstall File---#

sed -i '' '/rebaser/d' ~/.zshrc
sed -i '' '/rebaser/d' ~/.bash_profile


cd ~
rm -rf rebaser
clear
echo " "
echo " "
echo "---------------Rebaser Uninstall Complete---------------"
echo " "
echo " "

