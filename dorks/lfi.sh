#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

# Echo out the strings with the company name inserted and the corresponding Google search links
target_domain="$1"

echo "?cat=";
echo "https://www.google.com/search?q=inurl:%22%3Fcat%3D%22+site%3A${target_domain}"
echo ""  

echo "?dir=";
echo "https://www.google.com/search?q=inurl:%22%3Fdir%3D%22+site%3A${target_domain}"
echo ""

echo "?action=";
echo "https://www.google.com/search?q=inurl:%22%3Faction%3D%22+site%3A${target_domain}"
echo ""  

echo "?board=";
echo "https://www.google.com/search?q=inurl:%22%3Fboard%3D%22+site%3A${target_domain}"
echo ""  

echo "?date=";
echo "https://www.google.com/search?q=inurl:%22%3Fdate%3D%22+site%3A${target_domain}"
echo ""  

echo "?detail=";
echo "https://www.google.com/search?q=inurl:%22%3Fdetail%3D%22+site%3A${target_domain}"
echo ""  

echo "?file=";
echo "https://www.google.com/search?q=inurl:%22%3Ffile%3D%22+site%3A${target_domain}"
echo ""  

echo "?download=";
echo "https://www.google.com/search?q=inurl:%22%3Fdownload%3D%22+site%3A${target_domain}"
echo ""  

echo "?path=";
echo "https://www.google.com/search?q=inurl:%22%3Fpath%3D%22+site%3A${target_domain}"
echo ""  

echo "?folder=";
echo "https://www.google.com/search?q=inurl:%22%3Ffolder%3D%22+site%3A${target_domain}"
echo ""  

echo "?prefix=";
echo "https://www.google.com/search?q=inurl:%22%3Fprefix%3D%22+site%3A${target_domain}"
echo ""  

echo "?include=";
echo "https://www.google.com/search?q=inurl:%22%3Finclude%3D%22+site%3A${target_domain}"
echo ""  

echo "?page=";
echo "https://www.google.com/search?q=inurl:%22%3Fpage%3D%22+site%3A${target_domain}"
echo ""  

echo "?inc=";
echo "https://www.google.com/search?q=inurl:%22%3Finc%3D%22+site%3A${target_domain}"
echo ""  

echo "?locate=";
echo "https://www.google.com/search?q=inurl:%22%3Flocate%3D%22+site%3A${target_domain}"
echo ""  

echo "?show=";
echo "https://www.google.com/search?q=inurl:%22%3Fshow%3D%22+site%3A${target_domain}"
echo ""  

echo "?doc=";
echo "https://www.google.com/search?q=inurl:%22%3Fdoc%3D%22+site%3A${target_domain}"
echo ""  

echo "?site=";
echo "https://www.google.com/search?q=inurl:%22%3Fsite%3D%22+site%3A${target_domain}"
echo ""  

echo "?type=";
echo "https://www.google.com/search?q=inurl:%22%3Ftype%3D%22+site%3A${target_domain}"
echo ""  

echo "?view=";
echo "https://www.google.com/search?q=inurl:%22%3Fview%3D%22+site%3A${target_domain}"
echo ""  

echo "?content=";
echo "https://www.google.com/search?q=inurl:%22%3Fcontent%3D%22+site%3A${target_domain}"
echo ""  

echo "?document=";
echo "https://www.google.com/search?q=inurl:%22%3Fdocument%3D%22+site%3A${target_domain}"
echo ""  

echo "?layout=";
echo "https://www.google.com/search?q=inurl:%22%3Flayout%3D%22+site%3A${target_domain}"
echo ""  

echo "?mod=";
echo "https://www.google.com/search?q=inurl:%22%3Fmod%3D%22+site%3A${target_domain}"
echo ""  

echo "?conf=";
echo "https://www.google.com/search?q=inurl:%22%3Fconf%3D%22+site%3A${target_domain}"
echo ""  

