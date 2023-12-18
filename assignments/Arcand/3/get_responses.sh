#!/bin/bash

response_directory="response_files"

# If the directory doesn't exist, create it
if [ ! -d "$response_directory" ]; then
    mkdir "$response_directory"
    echo "Created directory: $response_directory"
fi

# Loop through website_list.txt
while read -r url; do
    # Get domain name
    domain_name="$(echo "$url" | sed 's|http[s]*://||;s|/|_|g')"

    # Fetch and save HTTP headers
    curl -ILsk "$url" > "$response_directory/$domain_name.txt"

    echo "Response saved for $url"
done < website_list.txt
