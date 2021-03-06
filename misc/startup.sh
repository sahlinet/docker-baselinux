#!/bin/bash
echo "Executing startup.sh"

#env | grep _ | egrep -v \\=\\$ >> /etc/environment
#env | grep _ | egrep \\=\\$ >> /etc/environment
#echo "/etc/environment"
#echo "********"
#cat /etc/environment
#echo "********"
#set -a

echo "# env before **************************************"
env
echo "# env after ***************************************"

for var in $(env); do
        k=`echo $var|awk -F= '{print $1}'`; v=`echo $var|awk -F= '{print $2}'`
        if [[ $var == *=\$* ]]; then
                echo "Expand var $k to value of $v"
                eval v="$v"
                export $k=$v
        fi
done

# Setup New Relic
if [ ! -z "$NEWRELIC_LICENSE" ]; then
    echo "Configure new relic daemon"
    if [ "$EUID" -ne 0 ]; then
        sudo nrsysmond-config --set license_key=$NEWRELIC_LICENSE
        sudo /usr/sbin/nrsysmond -c /etc/newrelic/nrsysmond.cfg
    else
        nrsysmond-config --set license_key=$NEWRELIC_LICENSE
        /usr/sbin/nrsysmond -c /etc/newrelic/nrsysmond.cfg
    fi
fi

echo "Executing startup_app.sh"
exec /startup_app.sh
