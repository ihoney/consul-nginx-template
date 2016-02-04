#!/bin/bash
CONSUL_HOME=`cd $(dirname $0)/.. && pwd`
CONSUL_BIN=$CONSUL_HOME/bin
pid=`ps -eo pid,command | grep 'consul agent' | grep -v grep | awk '{print $1}'` 
test -z $pid || kill -9 $pid
nohup $CONSUL_BIN/consul agent --config-file $CONSUL_HOME/conf/client.json -client=0.0.0.0 >> $CONSUL_HOME/log/consul.log 2>&1 &
