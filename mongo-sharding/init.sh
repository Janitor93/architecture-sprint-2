#!/bin/bash

cd scripts

sh ./configSvr-init.sh
sh ./shard1-init.sh
sh ./shard2-init.sh
sh ./router-init.sh
sh ./mock-db.sh
