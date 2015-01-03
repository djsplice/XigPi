#!/bin/bash

PIDFILE=/var/run/xig.pid

case $1 in
   start)
      echo $$ > ${PIDFILE};
      cd /root/xig-linux_src-1.5.1b19/src
      exec python ./gui/xig_app.py 
      ;;
    stop)
      kill `cat ${PIDFILE}` ;;
    *)
      echo "usage: xig.sh {start|stop}" ;;
esac
exit 0
