#---Rebaser Uninstall File---#

sed -i '' '/rebaser_util.sh/d' ~/.zshrc
sed -i '' '/rebaser_util.sh/d' ~/.bash_profile

sed -i '' '/rebaser_uninstall.sh/d' ~/.zshrc
sed -i '' '/rebaser_uninstall.sh/d' ~/.bash_profile

sed -i '' '/rebaser_reinstall.sh/d' ~/.zshrc
sed -i '' '/rebaser_reinstall.sh/d' ~/.bash_profile

cd ~
rm -rf rebaser
clear
echo " "
echo " "
echo "---------------Rebaser Uninstall Complete---------------"
echo " "
echo " "

