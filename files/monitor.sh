#!/bin/bash
service=apache2
STATUS="$(systemctl is-active $service.service)"

while :
do
        if [ "${STATUS}" = "active" ]; then
            echo "Service $service running ..... Nothing to Do"
        else
            echo "Service $service not running....  Restarting"
            cmd="sudo service $service start"
            run=$($cmd)
            echo "Done"
            sleep 5
        fi
done
