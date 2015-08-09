#!/bin/bash
MY_PATH="`dirname \"$0\"`"              # relative
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"  # absolutized and normalized
for f in `ls -a $MY_PATH`; do
  if [[ (-f "$MY_PATH/$f" && $f != `basename $0`) || (-d $f && $f != "." && $f != ".." && $f != ".git") ]]; then
    ln -s "$MY_PATH/$f" ~
  fi
done
