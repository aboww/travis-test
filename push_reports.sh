#!/usr/bin/env bash
git init travis-reports
cd travis-reports/
git remote add origin https://be7400750e28107810417da8ac3599156d20e0d2@github.com/aboww/aboww.github.io.git
git pull --depth=1 origin master
cp ../target/site -r ./
git add -A
git config user.email celikjant@protonmail.com
git config user.name travis-baba
git commit -m"hadi"
git push --set-upstream origin master	
