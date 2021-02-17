# Run this as root from /opt/daoistic.
FROM_CSS=/opt/daoistic/ui/dist/css
FROM_JS=/opt/daoistic/ui/dist/js

STATIC_CSS=/opt/daoistic/static/common/css
rm $STATIC_CSS/daoistic*
cp $FROM_CSS/* $STATIC_CSS
chown www-data:www-data $STATIC_CSS/*

STATIC_JS=/opt/daoistic/static/common/js
rm $STATIC_JS/daoistic*
cp $FROM_JS/* $STATIC_JS
chown www-data:www-data $STATIC_JS/*

COMMON_APP_CSS=/opt/daoistic/web/common/static/common/css
rm $COMMON_APP_CSS/daoistic*
cp $FROM_CSS/* $COMMON_APP_CSS
chown peter:peter $COMMON_APP_CSS/*

COMMON_APP_JS=/opt/daoistic/web/common/static/common/js
rm $COMMON_APP_JS/daoistic*
cp $FROM_JS/* $COMMON_APP_JS
chown peter:peter $COMMON_APP_JS/*

COMMON_PROJECT_CSS=/opt/daoistic/web/static/common/css
rm $COMMON_PROJECT_CSS/daoistic*
cp $FROM_CSS/* $COMMON_PROJECT_CSS
chown peter:peter $COMMON_PROJECT_CSS/*

COMMON_PROJECT_JS=/opt/daoistic/web/static/common/js
rm $COMMON_PROJECT_JS/daoistic*
cp $FROM_JS/* $COMMON_PROJECT_JS
chown peter:peter $COMMON_PROJECT_JS/*
