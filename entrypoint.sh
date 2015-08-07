#!/bin/bash

for i in "${MAGICCOOKIES[@]}"
do 
xauth add $i
done

cd /opt/kitematic; npm start
