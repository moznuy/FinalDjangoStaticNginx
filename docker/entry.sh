#!/usr/bin/env bash

python manage.py migrate
python manage.py collectstatic --noinput
cp -rv forum-front/build/. /tmp/static/
exec gunicorn -b 0.0.0.0:8000 FinalDjangoStaticNginx.wsgi

