#!/usr/bin/env bash
git init travis-reports
cd travis-reports/
git remote add origin https://f5ba2192cb1162834a252e09080c333589dac2af@github.com/aboww/aboww.github.io.git
#1 2 3
git pull --depth=1 origin master
cp ../target/site -r ./
git add -A
git config user.email celikjant@protonmail.com
git config user.name travis-baba
git commit -m"hadi"
git push --set-upstream origin master	
