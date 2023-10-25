#!/usr/bin/env bash

echo "Start!"
while read p; do
  curl -ILsk "$p" > cat.txt
  cookie=$(grep -o -i 'Set-Cookie' cat.txt | wc -l)
  echo "$p"
  echo $cookie >> cookie.txt
done <APIER006@ODU.txt
