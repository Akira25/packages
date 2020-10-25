#!/bin/sh

set -e

if [ ! -L /etc/banner ]; then
	mv /etc/banner /etc/banner.bak
	ln -s -T /tmp/banner /etc/banner
	#if [ $? ]; then exit 1; fi
fi

if [ ! "$(crontab -l | grep "refresh_banner.sh")" ]; then
	echo "*/1 * * * *	/usr/bin/refresh_banner.sh" >> /etc/crontabs/root
fi

exit 0