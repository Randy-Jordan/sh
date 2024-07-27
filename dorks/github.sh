#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_domain>"
    exit 1
fi

# Echo out the strings with the company name inserted and the corresponding GitHub search links
target_domain="$1"
github_search_url="https://github.com/search?q="
echo "" 
echo "password"
echo "${github_search_url}${target_domain}+password&type=Code"
echo "${github_search_url}hackertarget+password&type=Code"
echo "" 

echo "npmrc _auth"
echo "${github_search_url}${target_domain}+npmrc%20_auth&type=Code"
echo "${github_search_url}hackertarget+npmrc%20_auth&type=Code"
echo "" 

echo "dockercfg"
echo "${github_search_url}${target_domain}+dockercfg&type=Code"
echo "${github_search_url}hackertarget+dockercfg&type=Code"
echo "" 

echo "pem private"
echo "${github_search_url}${target_domain}+pem%20private&type=Code"
echo "${github_search_url}hackertarget+extension:pem%20private&type=Code"
echo "" 

echo "id_rsa"
echo "${github_search_url}${target_domain}+id_rsa&type=Code"
echo "${github_search_url}hackertarget+id_rsa&type=Code"
echo "" 

echo "aws_access_key_id"
echo "${github_search_url}${target_domain}+aws_access_key_id&type=Code"
echo "${github_search_url}hackertarget+aws_access_key_id&type=Code"
echo "" 

echo "s3cfg"
echo "${github_search_url}${target_domain}+s3cfg&type=Code"
echo "${github_search_url}hackertarget+s3cfg&type=Code"
echo "" 

echo "htpasswd"
echo "${github_search_url}${target_domain}+htpasswd&type=Code"
echo "${github_search_url}hackertarget+htpasswd&type=Code"
echo "" 

echo "git-credentials"
echo "${github_search_url}${target_domain}+git-credentials&type=Code"
echo "${github_search_url}hackertarget+git-credentials&type=Code"
echo "" 

echo "bashrc password"
echo "${github_search_url}${target_domain}+bashrc%20password&type=Code"
echo "${github_search_url}hackertarget+bashrc%20password&type=Code"
echo "" 

echo "sshd_config"
echo "${github_search_url}${target_domain}+sshd_config&type=Code"
echo "${github_search_url}hackertarget+sshd_config&type=Code"
echo "" 

echo "xoxp OR xoxb OR xoxa"
echo "${github_search_url}${target_domain}+xoxp%20OR%20xoxb%20OR%20xoxa&type=Code"
echo "${github_search_url}hackertarget+xoxp%20OR%20xoxb&type=Code"
echo "" 

echo "SECRET_KEY"
echo "${github_search_url}${target_domain}+SECRET_KEY&type=Code"
echo "${github_search_url}hackertarget+SECRET_KEY&type=Code"
echo "" 

echo "client_secret"
echo "${github_search_url}${target_domain}+client_secret&type=Code"
echo "${github_search_url}hackertarget+client_secret&type=Code"
echo "" 

echo "sshd_config"
echo "${github_search_url}${target_domain}+sshd_config&type=Code"
echo "${github_search_url}hackertarget+sshd_config&type=Code"
echo "" 

echo "github_token"
echo "${github_search_url}${target_domain}+github_token&type=Code"
echo "${github_search_url}hackertarget+github_token&type=Code"
echo "" 

echo "api_key"
echo "${github_search_url}${target_domain}+api_key&type=Code"
echo "${github_search_url}hackertarget+api_key&type=Code"
echo "" 

echo "FTP"
echo "${github_search_url}${target_domain}+FTP&type=Code"
echo "${github_search_url}hackertarget+FTP&type=Code"
echo "" 

echo "app_secret"
echo "${github_search_url}${target_domain}+app_secret&type=Code"
echo "${github_search_url}hackertarget+app_secret&type=Code"
echo "" 

echo "passwd"
echo "${github_search_url}${target_domain}+passwd&type=Code"
echo "${github_search_url}hackertarget+passwd&type=Code"
echo "" 

echo "s3.yml"
echo "${github_search_url}${target_domain}+.env&type=Code"
echo "${github_search_url}hackertarget+.env&type=Code"
echo "" 

echo ".exs"
echo "${github_search_url}${target_domain}+.exs&type=Code"
echo "${github_search_url}hackertarget+.exs&type=Code"
echo "" 

echo "beanstalkd.yml"
echo "${github_search_url}${target_domain}+beanstalkd.yml&type=Code"
echo "${github_search_url}hackertarget+beanstalkd.yml&type=Code"
echo "" 

echo "deploy.rake"
echo "${github_search_url}${target_domain}+deploy.rake&type=Code"
echo "${github_search_url}hackertarget+deploy.rake&type=Code"
echo "" 

echo "mysql"
echo "${github_search_url}${target_domain}+mysql&type=Code"
echo "${github_search_url}hackertarget+mysql&type=Code"
echo "" 

echo "credentials"
echo "${github_search_url}${target_domain}+credentials&type=Code"
echo "${github_search_url}hackertarget+credentials&type=Code"
echo "" 

echo "PWD"
echo "${github_search_url}${target_domain}+PWD&type=Code"
echo "${github_search_url}hackertarget+PWD&type=Code"
echo "" 

echo "deploy.rake"
echo "${github_search_url}${target_domain}+deploy.rake&type=Code"
echo "${github_search_url}hackertarget+deploy.rake&type=Code"
echo "" 

echo ".bash_history"
echo "${github_search_url}${target_domain}+.bash_history&type=Code"
echo "${github_search_url}hackertarget+.bash_history&type=Code"
echo "" 

echo ".sls"
echo "${github_search_url}${target_domain}+.sls&type=Code"
echo "${github_search_url}hackertarget+PWD&type=Code"
echo "" 

echo "secrets"
echo "${github_search_url}${target_domain}+secrets&type=Code"
echo "${github_search_url}hackertarget+secrets&type=Code"
echo "" 

echo "composer.json"
echo "${github_search_url}${target_domain}+composer.json&type=Code"
echo "${github_search_url}hackertarget+composer.json&type=Code"
echo "" 

echo "Snyk"
echo "${github_search_url}${target_domain}+snyk&type=Code"
echo "${github_search_url}hackertarget+snyk&type=Code"
echo "" 

