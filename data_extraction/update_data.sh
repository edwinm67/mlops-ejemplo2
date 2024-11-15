git config --global user.name 'Edwin Montoya'
git config --global user.email 'emontoya@eafit.edu.co'
#git remote set-url origin https://x-access-token:${{ secrets.GH_TOKEN }}@github.com/edwinm67/mlops-ejemplo2.git
git add .
set +e 
git status | grep modified
if [ $? -eq 0 ]
then
    set -e
    git commit -am "Automatically updated data"
    git push
else
    set -e
    echo "No changes since last run"
fi