#---Rebaser Uninstall File---#

sed -i '' '/ralias rebaser=/d' ~/.zshrc
sed -i '' '/ralias rebaser=/d' ~/.bash_profile


cd ~
rm -rf rebaser
clear
echo " "
echo " "
echo "---------------Rebaser Uninstall Complete---------------"
echo " "
echo " "

