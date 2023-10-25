#!/bin/bash

# Directory to store response files
response_directory="response_files"

# Check if the response directory exists; if not, create it
if [ ! -d "$response_directory" ]; then
    mkdir "$response_directory"
    echo "Created directory: $response_directory"
fi

# Loop through the list of website URLs in website_list.txt
while read -r url; do
    # Extract the website's domain name to use as the filename
    domain_name="$(echo "$url" | sed 's|http[s]*://||;s|/|_|g')"

    # Use curl to fetch the HTTP headers with the HEAD method and save the response to a file
    curl -ILsk "$url" > "$response_directory/$domain_name.txt"

    echo "Response saved for $url"
done < website_list.txt
