#!/bin/bash

cd scripts

sh ./configSvr-init.sh
sleep 10
sh ./shard1-init.sh
sleep 10
sh ./shard2-init.sh
sleep 10
sh ./router-init.sh
sleep 10
sh ./mock-db.sh
