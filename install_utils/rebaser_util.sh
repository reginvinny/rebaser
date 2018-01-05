echo ' '
echo '#######################################'
echo '#        Welcome to Rebaser!          #'
echo '#        Author: Regin Vinny          #'
echo '#######################################'
echo ''
curr_branch=$(git rev-parse --abbrev-ref HEAD)
ref_branch=master
echo 'Current branch : ' $curr_branch
echo ''
git checkout $ref_branch
echo ''
git pull --rebase
echo ' '
read -r -p "Are you sure? [Y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
clear
echo ''
echo ' '
echo '******** Rebasing branch' $curr_branch 'with $ref_branch ********'
echo ' '
git checkout $curr_branch
echo ''
git pull
echo ''
git rebase $ref_branch
clear
echo ''
echo ' '
echo '******** Force pushing changes ********'
echo ' '
git push --force
clear
echo ' '
echo ' '
echo '******** Rebase with $ref_branch complete! ********'
echo ' '
echo ' '
else
echo ' '
echo ' '
git checkout $curr_branch
clear
echo ' '
echo ' '
echo '******** Rebase cancelled! ********'
echo ' '
echo ' '
fi