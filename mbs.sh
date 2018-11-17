#!/bin/bash

freemb=$(free -m | grep Mem: | awk '{print $4}')
#echo $freemb
apiKey="YOUR API KEY"
update=$(curl --silent --request POST --header "X-THINGSPEAKAPIKEY: $apiKey" --d
ata "field1=$freemb" "http://api.thingspeak.com/update")

