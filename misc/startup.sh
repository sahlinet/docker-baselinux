#!/bin/bash
echo "Executing startup.sh"

#env | grep _ | egrep -v \\=\\$ >> /etc/environment
#env | grep _ | egrep \\=\\$ >> /etc/environment
#echo "/etc/environment"
#echo "********"
#cat /etc/environment
#echo "********"
#set -a
#. /etc/environment

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



echo "Executing custom startup's"
for i in $(ls -1 /startup_*sh 2>/dev/null); do
	echo "Execute $i"
	sh -x $i
	echo "Executed $i"
done

# ssh pubkey
if [ ! -z "$SSH_PUBKEY" ]; then
	echo "Setup SSH_PUBKEY"
        mkdir /root/.ssh
        chmod 600 /root/.ssh
        echo $SSH_PUBKEY | base64 -d > /root/.ssh/authorized_keys2
        chmod 600 /root/.ssh/authorized_keys2
	ls -al /root/.ssh
fi

# newrelic
if [ ! -z "$NEWRELIC_LICENSE" ]; then
	nrsysmond-config --set license_key=$NEWRELIC_LICENSE
	sed -i s/autostart=false/autostart=true/ /etc/supervisor/conf.d/newrelic.conf
fi

/usr/bin/supervisord -n
