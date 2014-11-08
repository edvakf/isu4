#!/bin/bash -e -x

SERVERS=${SERVERS:-isucon1 isucon2 isucon3}

# curl --data "deploy by $USER to $SERVERS" 'https://teamfreesozai.slack.com/services/hooks/slackbot?token=oxjd47qGfo59VhemVz43FQZF&channel=%23general'

for SERVER in ${SERVERS}
do
    echo $SERVER
    rsync -avz ./ isucon@$SERVER:/home/isucon/webapp/go/
    ssh -t isucon@$SERVER bash -c 'env; cd /home/isucon/webapp/go && /home/isucon/webapp/go/build.sh && sudo -H supervisorctl restart isucon_go'
done

