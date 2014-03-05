#! /bin/sh

TARGET=~/tmp/flaviodesousa-$(date +'%F_%R').tar.xz
(
	tar c /var/sqlite3/flaviodesousa.db /var/www/flaviodesousa/static/media/uploads |
		xz -9e > $TARGET
) &&
scp $TARGET @agnes.flaviodesousa.com:backup &&
logger "Local flaviodesousa.com database copied as $TARGET to agnes.flaviodesousa.com:backup"
