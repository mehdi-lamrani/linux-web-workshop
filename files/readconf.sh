while IFS='= ' read var val
do
    if [[ $var == \[*] ]]
    then
        if [[ $var == "[service]" ]]
        then
           echo
           echo section : $var
        fi
    elif [[ $val ]]
    then
        echo field : $var "|" value : $val
        if [[ $var == "name" ]]
        then
           services+=($val)
        fi
    fi
done <<<$(grep -v '^#' /etc/monitor/monitor.ini)

echo

i=0
for service in "${services[@]}"
do
     ((i=i+1))
     echo service $i : $service
done
