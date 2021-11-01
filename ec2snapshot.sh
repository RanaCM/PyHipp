#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair2.pem ec2-user@54.179.185.168 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster01; ~/update_snapshot.sh condaenv 4 MyCluster01"
