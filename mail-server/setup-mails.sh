#! /bin/bash

docker run --rm \
  -e MAIL_USER=info@fading-flame.com \
  -e MAIL_PASS=tbd \
  -it mailserver/docker-mailserver:latest \
  /bin/sh -c 'echo "$MAIL_USER|$(doveadm pw -s SHA512-CRYPT -u $MAIL_USER -p $MAIL_PASS)"' >> /usr/mailconfig/postfix-accounts.cf


