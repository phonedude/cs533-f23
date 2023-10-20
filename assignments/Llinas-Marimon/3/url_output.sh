# loop through each URL in website.txt file
while read i; do
    # extract the information of the URL using curl command and save it in a file
    curl -ILsk "$i" > "websites_details/$(echo "$i" | sed 's/[^a-zA-Z0-9]/_/g').txt"
done < websites.txt
