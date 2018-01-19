#!/usr/bin/env bash
git init travis-reports
cd travis-reports/
git remote add origin https://${GHTOKEN}@github.com/aboww/aboww.github.io.git
#1 2 3 2 w a
git pull --depth=1 origin master
cp ../target/site -r ./
git add -A
git config user.email celikjant@protonmail.com
git config user.name travis-baba
git commit -m"hadi"
git push --set-upstream origin master	
