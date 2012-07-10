#!/bin/sh

if [ ! $# == 1 ]; then
  echo "U should provide pattern"
  echo "eg. \n"
  echo "sh git-grep-blame console.log"
  exit
fi

git grep --no-color -n $1 js/ | while IFS=: read i j k; do echo -n "$i:$j"; git blame --color -L $j,+1 $i; done
