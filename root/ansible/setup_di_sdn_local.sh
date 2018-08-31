#!/usr/bin/env bash

exec 5> $(`basename $0`)_output.txt
BASH_XTRACEFD="5"
PS4='$LINENO: '
set -x

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
  echo "`basename $0` -- A SDN 2.2 installator."
  echo
  echo 'Usage:'
  echo "  ./`basename $0` hostname"
  echo
  exit 0
fi

host=$1
user=root
sudo mkdir -p /opt/cisco-aci-agent
sudo chmod 777 /opt/cisco-aci-agent
sudo cd /opt/cisco-aci-agent
sudo wget https://src.sevone.com/eng/solutions-central/cisco-aci-agent/raw/v2.2.0/launch -O /opt/cisco-aci-agent/launch
sudo chmod +x /opt/cisco-aci-agent/launch
sudo wget http://artifactory01.devops.sevone.com/app-image/NMS/Solutions/SDN/ACI/1.0/cisco-aci-agent.2.2.tar -O /opt/cisco-aci-agent/cisco-aci-agent.2.2.tar
sudo  /opt/cisco-aci-agent/launch setup
cp settings_s5723-1.env /opt/cisco-aci-agent/settings.env
vim /opt/cisco-aci-agent/settings.env
sudo /opt/cisco-aci-agent/launch install settings.env
sudo  /opt/cisco-aci-agent/launch run settings.env
