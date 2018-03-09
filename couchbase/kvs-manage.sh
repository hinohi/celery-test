#!/bin/bash -eu

CLI=couchbase-cli

USER=$CB_REST_USERNAME
PASS=$CB_REST_PASSWORD

CLUSTERS="kvs-1 kvs-2"

sleep 30

for cluster in $CLUSTERS
do
    echo "init cluster=$cluster"
    $CLI cluster-init \
         --cluster=$cluster \
         --cluster-username=$USER \
         --cluster-password=$PASS \
         --cluster-ramsize=256 \
         --cluster-index-ramsize=256 \
         --services='data,index,query'
    $CLI bucket-create \
         --cluster=$cluster \
         --bucket=app \
         --bucket-type=couchbase \
         --bucket-ramsize=256 \
         --bucket-replica=1 \
         --bucket-eviction-policy=valueOnly \
         --enable-flush=0
done
