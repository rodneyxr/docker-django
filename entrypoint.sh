#!/bin/sh

if [ ${DEPLOY_ENV} = "production" ]
then
   echo "Production mode is enabled."
   gunicorn -b :80 core.wsgi
elif [ ${DEPLOY_ENV} = "development" ]
then
   echo "Development mode is enabled."
   python manage.py runserver 0.0.0.0:80
else
    >&2 echo "DEPLOY_ENV must be set to either 'development' or 'production'"
    exit 1
fi