#!/bin/sh

find . -not -path "./js/*" -and -name "*.js" -exec grep -nH "text" {} \;
