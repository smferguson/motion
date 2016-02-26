#!/bin/bash

# for smtp-cli to you must install:
# sudo apt-get install  libio-socket-ssl-perl  libdigest-hmac-perl  libterm-readkey-perl \
#	libmime-lite-perl libfile-libmagic-perl libio-socket-inet6-perl

# give it enough time to write a file or 2
sleep 2

# get the newest file we've written and email it out
FILE=`ls -t /home/scott/Dropbox/*.jpg | head -1`


# email the most recent pic
smtp-cli --host <smtp_server> --user <from_address> --auth-plain --from <from_address> --to <to_address> --pass <password> --subject "event started $1:$2:$3" --body-plain "attached" --attach $FILE


