currentBranchName=`$currentDirectory/shortcuts/getBranchName.sh`

echo "...start pushing to origin $currentBranchName"
git push origin $currentBranchName
echo "...push to origin $currentBranchName completed!"
