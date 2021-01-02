# Run this as root from /opt/daoistic.
APP=blog
FROM=/opt/daoistic/ui/dist/css

NGINX_STATIC=/opt/daoistic/static/$APP/css
rm $NGINX_STATIC/daoistic*
cp $FROM/* $NGINX_STATIC
chown www-data:www-data $NGINX_STATIC/*

APP_STATIC=/opt/daoistic/web/$APP/static/$APP/css
rm $APP_STATIC/daoistic*
cp $FROM/* $APP_STATIC
chown peter:peter $APP_STATIC/*

PROJECT_STATIC=/opt/daoistic/web/static/$APP/css
rm $PROJECT_STATIC/daoistic*
cp $FROM/* $PROJECT_STATIC
chown peter:peter $PROJECT_STATIC/*
