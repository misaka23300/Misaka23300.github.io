# !/usr/bin/env sh

# aborting on errors
set -e

# building
npm run docs:build

# navigating to the build output directory
cd .vuepress/dist

# if you are deploying to a custom domain
# be sure to add proper CNAME records to your domain 
echo 'www.myfancydomain.com' > CNAME-record-here

git init
git add -A
git commit -m 'deploy'

# if deploying to https://misaka23300.github.io
git push -f git@github.com:misaka23300/misaka23300.github.io.git master

