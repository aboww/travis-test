#!/usr/bin/env bash
git init travis-reports
cd travis-reports/
git remote add origin https://21ae5c095242e92309feec331b8762dc980d36cf@github.com/aboww/aboww.github.io.git
git pull --depth=1 origin master
cp ../target/site -r ./
git add -A
git config user.email celikjant@protonmail.com
git config user.name travis-baba
git commit -m"hadi"
git push --set-upstream origin master	
