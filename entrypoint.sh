#!/bin/bash


set -f; IFS=$'\n'
mitcookies=($(echo $MAGICCOOKIES))
set +f; unset IFS


for i in "${mitcookies[@]}"
do 
xauth add $i
done

cd /opt/kitematic; npm start
