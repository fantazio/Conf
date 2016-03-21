#!/bin/bash

if [ "$1" == ":" ]; then
  cd ${@:2}
else
  for param in $@
  do
    cd $param
  done
fi
