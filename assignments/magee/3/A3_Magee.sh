#!/bin/sh



count=1
while read line
do
	echo $count
	curl -ILsk $line --output curl_output.txt
	((count++))

done < $domain_list.txt


#curl --write-out "%{http_code}\n" $line --output curl_output.txt
