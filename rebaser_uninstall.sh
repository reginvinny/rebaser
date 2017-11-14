#---Rebaser Uninstall File---#

sed -i '' '/alias rebaser=/d' ~/.zshrc
sed -i '' '/alias rebaser=/d' ~/.bash_profile


cd ~
rm -rf rebaser
clear
echo " "
echo " "
echo "---------------Rebaser Uninstall Complete---------------"
echo " "
echo " "

