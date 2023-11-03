#!/bin/bash
errHttp2='curl: (92) HTTP/2 stream 1 was not closed cleanly'
errTimeout='curl: (28) Operation timed out'

while IFS= read -r url
do
    # echo "$url"
    output=$(curl -sSILk -m 60 $url 2> buffer)
    error=$(< buffer)

    : '
        Retry using HTTP/1.1 is receiving an error over HTTP/2
        * might not need, ref: https://groups.google.com/g/cs533-f23/c/2oItvqUDx7o/m/--Py5TAZBgAJ
    '
    Might not need, pulled from 
    if grep -q "$errHttp2" <<< $error ; then
        output=$(curl -sSILk -m 60 --http1.1 $url 2> buffer)
        error=$(< buffer)
    fi

    if  grep -q $"curl: (*)*" <<< $error ; then
        echo "$error"
        echo -e "$error\r\n" > errors/$url
        echo "$output" >> errors/$url
    else
        echo $"$output" >> files/$url
    fi
done < $1

rm buffer