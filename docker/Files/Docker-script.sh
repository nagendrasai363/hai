#!/bin/bash 
chown -R www-data /Sites/online_test
chown -R www-data /Sites/online_test/yaksh
chown -R nobody /Sites/online_test/yaksh_data
chmod -R 664 /Sites/online_test
chmod -R +X /Sites
python3 manage.py makemigrations
python3 manage.py makemigrations notifications_plugin
/usr/sbin/apache2ctl -D FOREGROUND
