#!/bin/sh

if [ ! $# == 1 ]; then
  echo "U should provide user name."
  echo "eg. \n"
  echo "sh git-user-activity Marek"
  exit
fi

git log --shortstat --author "$1" \
    | grep "files changed" \
    | awk '{files+=$1; inserted+=$4; deleted+=$6} END  \
           {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'

#git log --shortstat --author "Marek" --since "2 weeks ago" --until "1 week ago" 
