#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

# Echo out the URLs and the corresponding Google search links
target_domain="$1"
echo ""

echo "?next="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?next="
echo ""

echo "?url="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?url="
echo ""

echo "?target="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?target="
echo ""

echo "?rurl="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?rurl="
echo ""

echo "?dest="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?dest="
echo ""

echo "?destination="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?destination="
echo ""

echo "?redir="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?redir="
echo ""

echo "?redirect_uri="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?redirect_uri="
echo ""

echo "?redirect_url="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?redirect_url="
echo ""

echo "?redirect="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?redirect="
echo ""

echo "/redirect/"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A/redirect/"
echo ""

echo "/cgi-bin/redirect.cgi?"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A/cgi-bin/redirect.cgi?"
echo ""

echo "/out/"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A/out/"
echo ""

echo "/out?"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A/out?"
echo ""

echo "?view="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?view="
echo ""

echo "/login?to="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A/login?to="
echo ""

echo "?image_url="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?image_url="
echo ""

echo "?go="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?go="
echo ""

echo "?return="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?return="
echo ""

echo "?returnTo="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?returnTo="
echo ""

echo "?return_to="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?return_to="
echo ""

echo "?checkout_url="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?checkout_url="
echo ""

echo "?continue="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?continue="
echo ""

echo "?return_path="
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A?return_path="
echo ""

