#!/bin/bash

cd ~/epita
for param in $@
do
  cd $param
done
