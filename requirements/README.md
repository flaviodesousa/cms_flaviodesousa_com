Development Environment
=======================

Python and pip
--------------

- sudo apt-get install python2.7
- cd /tmp
- wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
- sudo python get-pip.py
- sudo pip install --upgrade setuptools # just in case...
- sudo pip install virtualenv

PIL on 64 bit Ubuntu 12.04
--------------------------

sudo apt-get install libjpeg-dev libjpeg62 libjpeg62-dev zlib1g-dev libfreetype6 libfreetype6-dev
pip install PIL

sudo ln -s /usr/lib/x86_64-linux-gnu/libz.so /usr/lib
sudo ln -s /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib
sudo ln -s /usr/lib/x86_64-linux-gnu/libfreetype.so /usr/lib
