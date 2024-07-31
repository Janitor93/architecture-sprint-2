#!/bin/bash

echo "run router script"

docker compose exec -T mongos_router mongosh --port 27020 <<EOF
sh.addShard("shard1/shard1_repl1:27018");
sh.addShard("shard2/shard2_repl1:27019");
sh.enableSharding("somedb");
sh.shardCollection("somedb.helloDoc", { "name" : "hashed" } );
EOF

echo "finish router script"
