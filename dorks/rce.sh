#!/bin/bash

# Check if a company name is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

# Assign company name from the first argument
target_domain="$1"

# Echo Google search links with in-site parameters

echo ""  
echo "?cmd=";
echo "https://www.google.com/search?q=inurl:%22cmd%3D%22+site%3A${target_domain}"
echo ""  


echo "?exec=";
echo "https://www.google.com/search?q=inurl:%22exec%3D%22+site%3A${target_domain}"
echo ""  

echo "?command=";
echo "https://www.google.com/search?q=inurl:%22command%3D%22+site%3A${target_domain}"
echo ""  

echo "?execute=";
echo "https://www.google.com/search?q=inurl:%22execute%3D%22+site%3A${target_domain}"
echo ""  

echo "?ping=";
echo "https://www.google.com/search?q=inurl:%22ping%3D%22+site%3A${target_domain}"
echo ""  

echo "?query=";
echo "https://www.google.com/search?q=inurl:%22query%3D%22+site%3A${target_domain}"
echo ""  

echo "?jump=";
echo "https://www.google.com/search?q=inurl:%22jump%3D%22+site%3A${target_domain}"
echo ""  

echo "?code=";
echo "https://www.google.com/search?q=inurl:%22code%3D%22+site%3A${target_domain}"
echo ""  

echo "?reg=";
echo "https://www.google.com/search?q=inurl:%22reg%3D%22+site%3A${target_domain}"
echo ""  

echo "?do=";
echo "https://www.google.com/search?q=inurl:%22do%3D%22+site%3A${target_domain}"
echo ""  

echo "?func=";
echo "https://www.google.com/search?q=inurl:%22func%3D%22+site%3A${target_domain}"
echo ""  

echo "?arg=";
echo "https://www.google.com/search?q=inurl:%22arg%3D%22+site%3A${target_domain}"
echo ""  

echo "?option=";
echo "https://www.google.com/search?q=inurl:%22option%3D%22+site%3A${target_domain}"
echo ""  

echo "?load=";
echo "https://www.google.com/search?q=inurl:%22load%3D%22+site%3A${target_domain}"
echo ""  

echo "?process=";
echo "https://www.google.com/search?q=inurl:%22process%3D%22+site%3A${target_domain}"
echo ""  

echo "?step=";
echo "https://www.google.com/search?q=inurl:%22step%3D%22+site%3A${target_domain}"
echo ""  

echo "?read=";
echo "https://www.google.com/search?q=inurl:%22read%3D%22+site%3A${target_domain}"
echo ""  

echo "?function=";
echo "https://www.google.com/search?q=inurl:%22function%3D%22+site%3A${target_domain}"
echo ""  

echo "?req=";
echo "https://www.google.com/search?q=inurl:%22req%3D%22+site%3A${target_domain}"
echo ""  

echo "?feature=";
echo "https://www.google.com/search?q=inurl:%22feature%3D%22+site%3A${target_domain}"
echo ""  

echo "?exe=";
echo "https://www.google.com/search?q=inurl:%22exe%3D%22+site%3A${target_domain}"
echo ""  

echo "?module=";
echo "https://www.google.com/search?q=inurl:%22module%3D%22+site%3A${target_domain}"
echo ""  

echo "?payload=";
echo "https://www.google.com/search?q=inurl:%22payload%3D%22+site%3A${target_domain}"
echo ""  

echo "?run=";
echo "https://www.google.com/search?q=inurl:%22run%3D%22+site%3A${target_domain}"
echo ""  

echo "?print=";
echo "https://www.google.com/search?q=inurl:%22print%3D%22+site%3A${target_domain}"
echo ""  

