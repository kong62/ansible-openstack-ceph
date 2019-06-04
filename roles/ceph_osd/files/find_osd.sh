#!/bin/bash

all_disks=$(lsblk --nodeps -n -o name |grep -v ^sr.*)
all_parts=$(blkid | awk -F '[/:]' '{print $3}'| cut -b 1-3|sort -u)

declare -a raw_disks
a=0
flag=0

for i in ${all_disks[@]}
do
  for j in ${all_parts[@]}
  do
    if [ "$i" == "$j" ]
    then
      flag=1
      break
    fi
  done
  if [[ $flag -eq 0 ]]
  then
    raw_disks[a]=$i
    let a++
  else
    flag=0
  fi
done

for i in ${raw_disks[@]}
do
  echo $i
done
