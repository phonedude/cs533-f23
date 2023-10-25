#!/usr/bin/env bash

echo "Start!"
while read p; do
  curl -ILsk "$p" > cat.txt
  echo "$p"

  if cat cat.txt | grep -q 'HTTP/1.1 200 OK'
    then code=$(echo "200")
  fi

  if cat cat.txt | grep -q 'HTTP/1.1 404'
    then code=$(echo "404")
  fi

  if cat cat.txt | grep -q 'HTTP/1.1 301'
    then code=$(echo "301")
  fi

  echo $code
  cookie=$(grep -o -i 'Set-Cookie' cat.txt | wc -l)
  echo $cookie
  
  httponly=$(grep -o -i 'HttpOnly' cat.txt | wc -l)
  echo $httponly

  if cat cat.txt | grep -q -i 'SameSite=lax'
    then samesite=$(echo "lax")
  fi
  
  if cat cat.txt | grep -q -i 'SameSite=strict'
    then samesite=$(echo "strict")
    else samesite=$(echo "none")
  fi
 
  if cat cat.txt | grep -q 'path=/'
   then echo "YES"
   else echo "NO"
  fi


  echo "| $p | $code | $cookie | $httponly | $samesite |" >> README.md
done <APIER006@ODU.txt
#curl = curl -ILsk google.com > cat.txt



