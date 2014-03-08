pip install Mezzanine==3.0.9 # no --upgrade to avoid django 1.6
./manage.py syncdb --migrate
./manage.py collectstatic
