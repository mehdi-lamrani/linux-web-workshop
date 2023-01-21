. ./readconf.sh

echo

i=0
for service in "${services[@]}"
do
     ((i=i+1))
     echo RET : service $i : $service
done
