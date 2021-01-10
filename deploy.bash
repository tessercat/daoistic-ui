# Run this as root from /opt/daoistic.
FROM_CSS=/opt/daoistic/ui/dist/css
FROM_JS=/opt/daoistic/ui/dist/js

NGINX_CSS=/opt/daoistic/static/common/css
rm $NGINX_CSS/daoistic*
cp $FROM_CSS/* $NGINX_CSS
chown www-data:www-data $NGINX_CSS/*

NGINX_JS=/opt/daoistic/static/common/js
rm $NGINX_JS/daoistic*
cp $FROM_JS/* $NGINX_JS
chown www-data:www-data $NGINX_JS/*

APP_CSS=/opt/daoistic/web/common/static/common/css
rm $APP_CSS/daoistic*
cp $FROM_CSS/* $APP_CSS
chown peter:peter $APP_CSS/*

APP_JS=/opt/daoistic/web/common/static/common/js
rm $APP_JS/daoistic*
cp $FROM_JS/* $APP_JS
chown peter:peter $APP_JS/*

PROJECT_CSS=/opt/daoistic/web/static/common/css
rm $PROJECT_CSS/daoistic*
cp $FROM_CSS/* $PROJECT_CSS
chown peter:peter $PROJECT_CSS/*

PROJECT_JS=/opt/daoistic/web/static/common/js
rm $PROJECT_JS/daoistic*
cp $FROM_JS/* $PROJECT_JS
chown peter:peter $PROJECT_JS/*
