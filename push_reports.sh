#!/usr/bin/env bash
git init travis-reports
cd travis-reports/
git remote add origin https://${GHTOKEN}@github.com/aboww/aboww.github.io.git
#1 2 3 2 w a
git pull --depth=1 origin master

export COMMIT_ID=$(git rev-parse HEAD)
export COMMIT_SHORT=${COMMIT_ID:0:8}
export BUILD_DATE_TIME=$(git rev-parse HEAD | git show -s --format=%ci)
sed -i 's^<!--template-->^<!--template-->\n<a href="https://github.com/aboww/aboww.github.io/commit/'"$COMMIT_ID"'">'"$COMMIT_SHORT"'</a><span> :  ('"$BUILD_DATE_TIME"')</span> <a href="site/surefire-report.html">Test reports</a><br>^g' index.html

cp ../target/site -r ./
git add -A
git config user.email celikjant@protonmail.com
git config user.name travis-baba
git commit -m"hadi"
git push --set-upstream origin master	
