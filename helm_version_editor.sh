#!/usr/bin/env bash


echo "Arguments: $1 $2"

sed -i "" "s/tag:.*/tag: $1/g" $2
git add $2
git commit -m "updated version tag $1 on file $2"
git push
