#!/bin/bash

git submodule update --remote --merge
git add -A; git commit -am "Piano diary publish"; git push

hugo build
rm -rf ../nadim-website/piano/*
cp -R public/* ../nadim-website/piano/.

cd ../nadim-website
git add -A; git commit -am "Piano diary publish"; git push
cd ../nadim-piano
