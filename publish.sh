#!/bin/bash

hugo build
rm -rf ../nadim-website/piano/*
cp -R public/* ../nadim-website/piano/.
