#!/bin/bash
set -m

ENGINE=${STORAGE_ENGINE:-"wiredTiger"}

mongodb_cmd="mongod --storageEngine $ENGINE --directoryperdb"
cmd="$mongodb_cmd --httpinterface --rest --master --logpath /data/logs/mongodb/mongod.log --dbpath /data/db/mongodb"
#启动参数 如果镜像启动加了auth 则加密
if [ "$AUTH" == "yes" ]; then
    cmd="$cmd --auth"
fi

if [ "$JOURNALING" == "no" ]; then
    cmd="$cmd --nojournal"
fi

if [ "$OPLOG_SIZE" != "" ]; then
    cmd="$cmd --oplogSize $OPLOG_SIZE"
fi

$cmd &

if [ ! -f /data/db/.mongodb_password_set ]; then
   sh ./set_mongodb_password.sh
fi

fg
