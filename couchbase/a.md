1. `cluster-init` する

https://developer.couchbase.com/documentation/server/current/cli/cbcli/couchbase-cli-cluster-init.html

```
couchbase-cli cluster-init \
--cluster=localhost \
--cluster-username=admin \
--cluster-password=password \
--cluster-ramsize=256 \
--cluster-index-ramsize=256 \
--cluster-name=127.0.0.1 \
--services="data,index,query"
```

```

1. 必要なら `server-add` 
https://developer.couchbase.com/documentation/server/current/cli/cbcli/couchbase-cli-server-add.html

# couchbase-cli server-add --cluster=localhost --server-add=localhost --server-add-username=admin --server-add-password=password
ERROR: unable to server-add localhost:8091 (400) Bad Request
["Prepare join failed. Joining node to itself is not allowed."]
```

1. `bucket-create`

https://developer.couchbase.com/documentation/server/current/cli/cbcli/couchbase-cli-bucket-create.html

```
couchbase-cli bucket-create --cluster=localhost --bucket=app --bucket-type=couchbase --bucket-ramsize=256 --bucket-r
eplica=1 --bucket-eviction-policy=valueOnly --enable-flush=0
```