#! /bin/sh

. /var/python/env/flaviodesousa/bin/activate
CMS_FLAVIODESOUSA_ADMIN_URL=^admin/
CMS_DJANGO_SECRET_KEY=irrelevant
/var/www/flaviodesousa/manage.py poll_twitter
