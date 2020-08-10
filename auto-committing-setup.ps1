$ErrorActionPreference = "Stop"
$env:GIT_REDIRECT_STDERR = '2>&1'  #https://github.com/dahlbyk/posh-git/issues/109

# declare variables
$GitHubUsername='devhl-labs'
$PracticeRepoDir='E:\repos\powershell-practice'
$CommitMessage='auto committed from auto-committing-setup.ps1!'

# fork and clone this repo into the powershell-studio directory
git clone "https://github.com/$GitHubUsername/powershell-practice" "$PracticeRepoDir"

# TODO: complete steps 5-9
Copy-Item -Path $PSCommandPath -Destination "$PracticeRepoDir"

cd "$PracticeRepoDir"

git add .

git commit -a -m $CommitMessage

git push origin master