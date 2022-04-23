#!/bin/bash
while :
do

#Grab the web contect from the radio receiver and strip away all the unwanted HTML tags and what not.
curl --silent http://<IP-address goes here>/SoundBridgeNP.html  | awk '/<b>/,/<\/b\>/' | sed -e 's/<[^>]*>//g' | sed '/^$/d' 

#Wait 15 seconds
sleep 15

#Do that roundy-round.
done
