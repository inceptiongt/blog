hexo generate
cd Static
rm -r `ls | grep -v "aaa"`
cp -rf ../public/. ./
git add .
git commit -m “update”
git push origin master