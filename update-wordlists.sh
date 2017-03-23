#!/bin/sh

( cat index.js.tmpl
  for file in adverbs adjectives names ; do 
    echo "PetName.prototype.$file = ["
    awk '{print "    \""$1"\","}' < ${PETNAMEPATH:-../petname/usr/share/petname/}/$file.txt
    echo "];"
  done
) > index.js

