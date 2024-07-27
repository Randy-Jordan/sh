#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

# Echo out the strings with the company name inserted and the corresponding Google search links
target_domain="$1"
echo ""  
echo "inurl:backup ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup"
echo ""  

echo "inurl:backup.zip ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup.zip"
echo ""  

echo "inurl:backup.rar ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup.rar"
echo ""  

echo "inurl:backup.sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup.sql"
echo ""  

echo "inurl:backup filetype:sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup+filetype%3Asql"
echo ""  

echo "inurl:save filetype:sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Asave+filetype%3Asql"
echo ""  

echo "inurl:web.zip ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Aweb.zip"
echo ""  

echo "inurl:website.zip ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Awebsite.zip"
echo ""  

echo "filetype:bak ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=filetype%3Abak"
echo ""  

echo "filetype:abk ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=filetype%3Aabk"
echo ""  

echo 'inurl:backup "Parent Directory"' ${target_domain}
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup+%22Parent+Directory%22"
echo ""  

echo "inurl:db.sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Adb.sql"
echo ""  

echo "inurl:db.sqlite ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Adb.sqlite"
echo ""  

echo "inurl:setup.sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Asetup.sql"
echo ""  

echo "inurl:mysql.sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Amysql.sql"
echo ""  

echo "inurl:users.sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Ausers.sql"
echo ""  

echo "inurl:backup.sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup.sql"
echo ""  

echo "inurl:db filetype:sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Adb+filetype%3Asql"
echo ""  

echo "inurl:backup filetype:sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup+filetype%3Asql"
echo ""  

echo "create table  filetype:sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=create+table+filetype%3Asql"
echo ""  

echo '"-- MySQL dump" "Server version" "Table structure for table"' ${target_domain}
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=%22--+MySQL+dump%22+%22Server+version%22+%22Table+structure+for+table%22"
echo ""  

echo "inurl:/db/websql/ ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3A%2Fdb%2Fwebsql%2F"
echo ""  

echo "filetype:sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=filetype%3Asql"
echo ""  

echo "inurl:backup filetype:sql ${target_domain}"
echo "https://www.google.com/search?as_sitesearch=${target_domain}&as_q=inurl%3Abackup+filetype%3Asql"
echo ""  

