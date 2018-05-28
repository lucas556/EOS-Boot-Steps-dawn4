#!/bin/bash

DIR="/opt/EOS-Boot-Steps-dawn4"


    if [ -f $DIR"/nodeos.pid" ]; then
	pid=`cat $DIR"/nodeos.pid"`
	echo $pid
	kill $pid
	rm -r $DIR"/nodeos.pid"

	echo -ne "Stoping Nodeos"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rNodeos Stopped.    \n"
    fi
