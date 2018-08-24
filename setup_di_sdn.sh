#!/usr/bin/env bash

set +x
host=s5723
user=root
ssh $user@$host sudo mkdir -p /opt/cisco-aci-agent
ssh $user@$host sudo chmod 777 /opt/cisco-aci-agent
ssh $user@$host sudo cd /opt/cisco-aci-agent
ssh $user@$host sudo wget https://src.sevone.com/eng/solutions-central/cisco-aci-agent/raw/v2.2.0/launch -O /opt/cisco-aci-agent/launch
ssh $user@$host sudo chmod +x /opt/cisco-aci-agent/launch
ssh $user@$host sudo wget http://artifactory01.devops.sevone.com/app-image/NMS/Solutions/SDN/ACI/1.0/cisco-aci-agent.2.2.tar -O /opt/cisco-aci-agent/cisco-aci-agent.2.2.tar
ssh $user@$host sudo  /opt/cisco-aci-agent/launch setup
scp settings.env $user@$host:/opt/cisco-aci-agent
ssh $user@$host sudo  /opt/cisco-aci-agent/launch install settings.env
ssh $user@$host sudo  /opt/cisco-aci-agent/launch run settings.env
