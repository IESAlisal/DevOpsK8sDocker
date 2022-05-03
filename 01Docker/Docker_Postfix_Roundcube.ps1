# https://hub.docker.com/r/marooou/postfix-roundcube#!

# mkdir -p /data/ 
# Start docker container

docker run -e "ADMIN_USERNAME=root" `
           -e "ADMIN_PASSWD=password" `
           -e "DOMAIN_NAME=example.com" `
           -e "USERS=user1:pass_11,user2:pass_22" `
           -d -v /data/mysql:/var/lib/mysql -v /data/vmail/:/var/vmail -v /data/log:/var/log  `
           -p 25:25 -p 80:80 -p 110:110 -p 143:143 -p 465:465 -p 993:993 -p 995:995 `
           marooou/postfix-roundcube


# After running container, you can access the mail server via:

# Protocols: pop3, smtp, imap, pop3s imaps, smtps
# PostfixAdmin - http://yourhost/postfixadmin - use login and password defined within docker start, with variables ADMIN_USERNAME and ADMIN_PASSWD.
# Roundcube - http://yourhost/roundcubemail - use accounts created with either with the admin panel or with USERS env variable -