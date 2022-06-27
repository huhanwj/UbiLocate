#!/bin/bash

# ssh logins
us="admin"
pw="abcd123"

devs="3 4"

echo "Reloading the devices"
for dev in $devs ; do
  sshpass -p ${pw} ssh ${us}@192.168.50.${dev} /jffs/tofsoftware/./config.sh
done

