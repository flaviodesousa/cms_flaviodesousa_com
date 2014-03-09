#! /bin/sh

. /var/python/env/flaviodesousa/bin/activate

CMS_FLAVIODESOUSA_ADMIN_URL=x \
CMS_DJANGO_SECRET_KEY=x \
/var/www/flaviodesousa/manage.py poll_twitter
