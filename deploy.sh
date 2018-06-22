hexo generate
cd ../inceptiongt.github.io/
cp -rf ../hexo/public/. ./
git add .
git commit -m “update”
git push origin master