#!/usr/bin/env bash

python manage.py migrate
python manage.py collectstatic --noinput
exec gunicorn -b 0.0.0.0:8000 FinalDjangoStaticNginx.wsgi
