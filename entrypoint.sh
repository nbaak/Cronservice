#!/bin/sh

THIS_DIR=$(dirname $(readlink -f $0))
CRON_FILE=/app/crontab.txt

if [ -f "$CRON_FILE" ]; then
    crontab $CRON_FILE
    echo "$CRON_FILE loaded"
fi

# start cron
/usr/sbin/crond -f -l 8
#& tail -f /var/log/cron*
