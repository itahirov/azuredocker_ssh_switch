#!/bin/bash
eval $(printenv | grep SSH_ENABLED  | sed -n "s/^\([^=]\+\)=\(.*\)$/export \1=\2/p" | sed 's/"/\\\"/g' | sed '/=/s//="/' | sed 's/$/"/' >> /etc/profile)
set -e
if [ $SSH_ENABLED = "1" ] || [ $SSH_ENABLED = "TRUE" ];
then
 echo "Starting SSH ..."
 service ssh start
fi 

gunicorn -b 0.0.0.0:8000 application:app
