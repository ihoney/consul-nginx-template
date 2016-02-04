#!/bin/bash
CONSUL_HOME=`cd $(dirname $0)/.. && pwd`
CONSUL_BIN=$CONSUL_HOME/bin
NGINX_HOME=$CONSUL_HOME/nginx
pid=`ps -eo pid,command | grep -v grep | grep 'consul-template -consul' | awk '{print $1}'`
test -z $pid || kill -9 $pid
echo "start consul-template " `date` >> $CONSUL_HOME/log/consul-template.log
nohup $CONSUL_BIN/consul-template -consul localhost:8500 -template="$CONSUL_HOME/template/template.ctpl:$NGINX_HOME/sites-available/server.conf:$NGINX_HOME/sbin/nginx -s reload" >> $CONSUL_HOME/log/consul-template.log 2>&1 &
