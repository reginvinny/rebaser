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
echo 'Select option (1 or 2)'
echo ' 1. Rebase current branch with master branch'
echo ' 2. Rebase current branch with another branch'
echo ''
echo 'Enter the option: ' && read option
echo ''
echo 'Selected option is ..... '$option
echo ''
if [[ "$option" == "1" ]]
then
ref_branch=master
elif [[ "$option" == "2" ]]
then
echo ---------
git branch
echo ''
echo 'Enter the reference branch name: ' && read ref_branch_name
echo ''
echo 'Selected branch name is '$ref_branch_name
echo ''
ref_branch=$ref_branch_name
if git rev-parse --quiet --verify $ref_branch_name > /dev/null;
then
   echo "Branch name '$ref_branch_name' exists! Proceeding..."
else 
echo "Branch name '$ref_branch_name' doesn't exists! Exiting..."
echo ' '
echo ' '
exit 1
fi
else
echo ' '
echo 'Error... Please try again '
echo ' '
exit 1
fi
echo ''    
echo '--------------------------------'
if [[ "$curr_branch" == "master" ]]
    then
    echo ' '
    echo 'Error... Not allowed to rebase master with another branch. Exiting...'
    echo ' '
    exit 1
    elif [[ "$curr_branch" == "$ref_branch_name" ]]
    then
    echo ' '
    echo 'Error... Not allowed to rebase a branch with itself. Exiting... '
    echo ' '
    exit 1
fi


read -r -p "Are you sure? [Y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
echo ''
git checkout $ref_branch
echo ''
git pull --rebase
echo ' '
clear
echo ''
echo ' '
echo "******** Rebasing branch $curr_branch with $ref_branch ********"
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
echo "******** Rebase with $ref_branch complete! ********"
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
