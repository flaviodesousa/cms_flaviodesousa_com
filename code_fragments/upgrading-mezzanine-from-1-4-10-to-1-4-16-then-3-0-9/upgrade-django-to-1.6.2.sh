pip install --upgrade django
./manage.py syncdb --migrate
./manage.py collectstatic
./manage.py runserver
