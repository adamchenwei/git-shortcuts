currentDirectory=$(pwd)



headCount=$2
headCount="${headCount:-2}"

message=$1
lastMessage=$(git log --format=%B -n 1 HEAD~$headCount)
message="${message:-$lastMessage}"

branchName=`$currentDirectory/shortcuts/getBranchName.sh`

echo '----'
echo "how far we go back to: $headCount heads"
echo "your message: $message"
echo $branchName
echo "message default will be: $lastMessage"
echo "message we will use is $message"
echo '----'

git reset --soft HEAD~$headCount
git commit -m "$message" -n

#force commit and push to current branch
./fp

