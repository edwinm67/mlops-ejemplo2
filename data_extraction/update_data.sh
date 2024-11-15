git config --global user.name 'Edwin Montoya'
git config --global user.email 'emontoya@eafit.edu.co'
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