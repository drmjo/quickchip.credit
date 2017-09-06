#!/bin/bash

# run.sh $commit_hash $host_port
#
docker run \
  --rm \
  --detach \
  --name quickchip-$1 \
  --volume quickchip-ghost-storage:/var/lib/ghost/content \
  -p $2:2368 \
  quickchip:$1
