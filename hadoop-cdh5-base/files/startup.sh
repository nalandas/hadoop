#!/bin/bash
if [[ -n $CONTAINER_IF ]]; then
  echo "Lookup ip addr from container interface: $CONTAINER_IF .."
  until [ -n "$container_ip" ]
  do
    container_ip=$(ip addr show dev $CONTAINER_IF | grep 'inet ' | awk '{print $2}')
    sleep 2
  done
  echo "Container IP addr from SDN: $container_ip .."
  export NEW_IP="${container_ip%%/*}"
  echo "$NEW_IP  $HOSTNAME
127.0.0.1       localhost
::1     localhost ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters" > /etc/hosts

  cat /etc/hosts
fi;

for init in `ls /conf/init/*`; do
  bash "$init"
done
supervisord -c /etc/supervisord.conf -n
