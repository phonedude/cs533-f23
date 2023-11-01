#!/bin/bash

mkdir HTTP_response_headers
rep=HTTP_response_headers

count=1

echo -e "Site\tStatusCode\tXframe\tCSP" >> iframe_report.tsv

while read -r site; do
	echo "Line $count"
	echo $site
	
	echo "$rep/$site.txt"

	curl -ILsk $site -o $site

	status=$(grep ^"HTTP" $site | tail -1| cut -d" " -f2)
	xframe=$(grep -i ^"x-frame-options:" $site| tail -1|  tr -d $'\r')
	csp=$(grep -i ^"content-security-policy:" $site| tail -1|  tr -d $'\r')

	echo -e $site"\t"$status"\t"$xframe"\t"$csp >> iframe_report.tsv

	mv $site "$rep/$site.txt"
	count=$((count+1))
done < website_list.txt



