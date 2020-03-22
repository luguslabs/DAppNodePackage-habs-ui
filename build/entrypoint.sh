#!/bin/sh

# check env file prepared and coming from Archipel DappNodePackage shared volume
if [ -f /config/archipel-ui.env ]
then
    echo "load env /config/archipel-ui.env"
    . /config/archipel-ui.env
else 
    echo "File /config/archipel-ui.env not found. Set default values"
    export REACT_APP_API_URL="http://127.0.0.1"
    export REACT_APP_API_PORT=3000
fi
echo "REACT_APP_API_URL env is now : $REACT_APP_API_URL"
echo "REACT_APP_API_PORT env is now : $REACT_APP_API_PORT"

echo "Valorize __PRODUCTION_API_URL__ config with REACT_APP_API_URL"
sed -i -e "s~__PRODUCTION_API_URL__~$REACT_APP_API_URL~g" /usr/share/nginx/html/static/js/*.js 
echo "Valorize __PRODUCTION_API_PORT__ config with REACT_APP_API_PORT"
sed -i -e "s/__PRODUCTION_API_PORT__/$REACT_APP_API_PORT/g" /usr/share/nginx/html/static/js/*.js 

ARCHIPEL_UI_CONTAINER_IP=$(awk 'END{print $1}' /etc/hosts)
echo "Archipel UI website go to : http://$ARCHIPEL_UI_CONTAINER_IP"
exec nginx -g 'daemon off;'