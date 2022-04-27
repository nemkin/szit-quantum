BUILD_FOLDER=_site

bundle exec jekyll build --config=_config.yml,_config.prod.yml

STATUS="$(git status)"

if [[ $STATUS == *"nothing to commit, working tree clean"* ]]
then
    sed -i "" "/$BUILD_FOLDER/d" ./.gitignore
    git add .
    git commit -m "Edit .gitignore to publish"
    git push origin `git subtree split --prefix $BUILD_FOLDER main`:deploy --force
    git reset HEAD~
    git checkout .gitignore
else
    echo "Need clean working directory to publish"
fi

