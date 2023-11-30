#!/usr/bin/env bash

echo "Start!"
while read p; do
  curl -ILsk "$p" > response.txt
  echo "$p"
done <APIER006@ODU.txt
