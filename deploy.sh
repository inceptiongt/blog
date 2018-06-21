hexo generate
cp -rf public/. Static/inceptiongt.github.io/
cd Static/inceptiongt.github.io/
git add .
git commit -m “update”
git push origin master