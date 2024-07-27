#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

# Echo out the URLs without {target} and the corresponding Google search links
target_domain="$1"
echo ""
echo "?dest="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?dest="
echo "" 
echo "?redirect="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?redirect="
echo "" 

echo "?uri="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?uri="
echo "" 

echo "?path="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?path="
echo "" 

echo "?continue="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?continue="
echo "" 

echo "?url="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?url="
echo "" 

echo "?window="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?window="
echo "" 

echo "?next="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?next="
echo "" 

echo "?data="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?data="
echo "" 

echo "?reference="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?reference="
echo "" 

echo "?site="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?site="
echo "" 

echo "?html="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?html="
echo "" 

echo "?val="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?val="
echo "" 

echo "?validate="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?validate="
echo "" 

echo "?domain="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?domain="
echo "" 

echo "?callback="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?callback="
echo "" 

echo "?return="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?return="
echo "" 

echo "?page="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?page="
echo "" 

echo "?feed="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?feed="
echo "" 

echo "?host="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?host="
echo "" 

echo "?port="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?port="
echo "" 

echo "?to="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?to="
echo "" 

echo "?out="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?out="
echo "" 

echo "?view="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?view="
echo ""

echo "?dir="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?dir="
echo "" 
