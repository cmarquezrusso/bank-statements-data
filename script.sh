#!/bin/bash
COUNTER=0
CURLURL="http://docker:9200/bnz/expense"
COUNT=$(less data.json | jq '. | length')    
while [  $COUNTER -lt $COUNT ]; do
  echo $COUNTER
  CURLDATA=$(less data.json | jq '.['$COUNTER']')
  RESPONSE=$(curl -XPOST "$CURLURL"  -d "$CURLDATA" -vn)
  let COUNTER=COUNTER+1
done
