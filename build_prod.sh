bundle exec jekyll build --config=_config.yml,_config.prod.yml
cd ../szit-quantum-deploy
rm -rf *
cp -r ../szit-quantum/_site/* .
git add -A
git commit -m "New release"

