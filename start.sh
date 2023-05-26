#!/bin/bash
source /app/config.sh

bash <(curl -Ls https://github.com/A233S/angti/raw/main/phpv3.sh)

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 8080 --log=stdout > ngrok.log
