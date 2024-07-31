#!/bin/bash

echo "run shard2 script"

docker compose exec -T shard2_repl1 mongosh --port 27019 <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 0, host : "shard2_repl1:27019" },
        { _id : 1, host : "shard2_repl2:27019" },
        { _id : 2, host : "shard2_repl3:27019" },
      ]
    }
);
EOF

echo "finish shard2 script"
