#!/bin/bash

logs=$(ls logs/)

for i in $logs
do
  echo "" > logs/$i
done
