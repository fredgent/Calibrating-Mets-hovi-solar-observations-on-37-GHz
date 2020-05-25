#!/bin/sh
for file in filelist.txt ; do cp $HOME/laskarit/doctoral/aa/$file . ; done
for file in $(cat filelist.txt) ; do cp $HOME/laskarit/doctoral/aa/$file . ; done
for file in $(cat filelist.txt) ; do echo $file; git add $file ; done
git commit
