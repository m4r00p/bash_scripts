#!/bin/sh

if [ ! $# == 2 ]; then
  echo "U should provide pattern and dir. e.g.:"
  echo "sh git-grep-blame console.log js/"
  exit
fi

git grep --no-color -n $1 $2 | while IFS=: read i j k; do printf "$i:$j\r"; git blame --color -L $j,+1 $i; done
