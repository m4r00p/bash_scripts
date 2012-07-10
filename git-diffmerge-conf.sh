#!/bin/sh

git config --global merge.tool diffmerge
git config --global mergetool.diffmerge.cmd "diffmerge --merge --result=\$MERGED \$LOCAL \$BASE \$REMOTE"
git config --global mergetool.diffmerge.trustExitCode true
