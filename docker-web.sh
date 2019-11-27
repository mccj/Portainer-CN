#!/bin/sh
docker stop portainer
docker rm portainer
rm -r /public
wget https://raw.githubusercontent.com/wangzhuok/Portainer-CN/master/Portainer-CN.tar.gz
mkdir /public
tar -xzvf Portainer-CN.tar.gz -C /public
docker run -d --restart=always --name="portainer" -p 9999:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data -v /public:/public portainer/portainer
rm -r Portainer-CN.tar.gz
