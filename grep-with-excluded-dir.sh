#!/bin/sh

find . -not -path "$3" -and -name "$2" -exec grep -nH "$1" {} \;
