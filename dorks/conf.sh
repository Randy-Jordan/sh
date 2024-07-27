#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

# Echo out the strings with the company name inserted and the corresponding Google search links
target_domain="$1"

echo "inurl:config ${target_domain} pass"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aconfig+${target_domain}+pass"
echo "" 


echo "inurl:config ${target_domain} secret"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aconfig+${target_domain}+secret"
echo "" 


echo "inurl:config.php ${target_domain} dbpasswd"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aconfig.php+${target_domain}+dbpasswd"
echo "" 


echo "inurl:config.php ${target_domain} pass"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aconfig.php+${target_domain}+pass"
echo "" 


echo "inurl:config.php ${target_domain} password"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aconfig.php+${target_domain}+password"
echo "" 


echo "inurl:configuration ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aconfiguration"
echo "" 


echo "inurl:env ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aenv"
echo "" 


echo "inurl:setting ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Asetting"
echo "" 

echo "filetype:log ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=filetype%3Alog"
echo "" 

echo 'intext:"Index of /"' +.htaccess ${target_domain}
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=intext%3A%22Index+of+%2F%22+%2B.htaccess"
echo "" 

echo 'intitle:"index of"' ${target_domain}
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=intitle%3A%22index+of%22"
echo "" 

echo "inurl:& intext:admin intext:login ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A%26+intext%3Aadmin+intext%3Alogin"
echo "" 

echo "inurl:& intext:search ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A%26+intext%3Asearch"
echo "" 

echo "inurl:backup ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup"
echo "" 

echo "inurl:backup.zip ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup.zip"
echo ""   

echo "inurl:quiz inurl:& ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aquiz+inurl%3A%26"
echo ""

echo "inurl:Makefile.toml ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3AMakefile.toml"
echo ""

echo "hostname user password filetype:xml ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=hostname+user+password+filetype%3Axml"
echo "" 
