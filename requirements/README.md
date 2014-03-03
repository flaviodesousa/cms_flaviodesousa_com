Development Environment
=======================

Python and pip
--------------

- `sudo apt-get install python2.7`
- `cd /tmp`
- `wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py`
- `sudo python get-pip.py`
- `sudo pip install --upgrade setuptools` # just in case...
- `sudo pip install virtualenv`

Clone sources
-------------

- `cd; mkdir -p dev`
- git clone

Config virtualenvwrapper
------------------------
Source: [ReadTheDocs](http://virtualenvwrapper.readthedocs.org/en/latest/)

- `sudo pip install virtualenvwrapper`
- add `export WORKON_HOME=~/.virtualenv` to .(bas|zs)hrc
- `export WORKON_HOME=~/.virtualenv`
- `mkdir $WORKON_HOME`
- `source virtualenvwrapper.sh`
- `mkvirtualenv cms`
- Copy lazy environment settings: `cp <project dir>/requirements/post* $WORKON_HOME/cms/bin`

Pillow Prereqs
--------------

- `sudo apt-get install python2.7-dev libjpeg-dev libjpeg8 libjpeg8-dev zlib1g-dev libfreetype6 libfreetype6-dev`

The steps below were needed on a 64 bit Ubuntu 12.04
----------------------------------------------------

- `sudo ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib`
- `sudo ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib`
- `sudo ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib`

Finally install the requirements
--------------------------------

- `pip install -r requirements/project.txt`

References
----------

- [virtualenvwrapper docs](http://virtualenvwrapper.readthedocs.org/en/latest/index.html)
- [Mezzanine ChangeLog](https://github.com/stephenmcd/mezzanine/blob/master/CHANGELOG)
- [Mezzanine ChangeLog in Docs](http://mezzanine.jupo.org/docs/colophon.html)
- [Django Project](https://www.djangoproject.com/)
- [South Documentation](http://south.readthedocs.org/en/latest/index.html)
