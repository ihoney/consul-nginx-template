#!/bin/bash
CURHOME=`cd $(dirname $0) && pwd`

nginxUrl=http://nginx.org/download/nginx-1.9.10.tar.gz
cosulUrl=https://releases.hashicorp.com/consul/0.6.3/consul_0.6.3_linux_amd64.zip
consulUiUrl=https://releases.hashicorp.com/consul/0.6.3/consul_0.6.3_web_ui.zip
consulTemplateUrl=https://releases.hashicorp.com/consul-template/0.12.2/consul-template_0.12.2_linux_amd64.zip

test -d $CURHOME/software || mkdir $CURHOME/software

cd $CURHOME/software

echo "download nginx source"
test -f nginx.tar.gz || curl $nginxUrl -o nginx.tar.gz

echo "download consul"
test -f consul.zip || curl $consulUrl -o consul.zip && unzip consul.zip

echo "download consul_ui"
test -f consul_ui.zip || curl $consulUiUrl -o consul_ui.zip

echo "download consul-template"
test -f consul-template.zip || curl $consulTemplateUrl -o consul-template.zip && unzip consul-template.zip

