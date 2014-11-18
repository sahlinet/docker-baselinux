#!/bin/bash
env | grep _ >> /etc/environment

echo "Executing startup.sh"

echo "Executing custom startup's"
for i in $(ls -1 startup_*sh 2>/dev/null); do
	echo "Execute $i"
	sh $i
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
