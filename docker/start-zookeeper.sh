#!/bin/bash
if [[ ! -z "$tickTime" ]]; then
    echo "tickTime=$tickTime" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$initLimit" ]]; then
    echo "initLimit=$initLimit" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$syncLimit" ]]; then
    echo "syncLimit=$syncLimit" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$dataDir" ]]; then
	mkdir -p $dataDir;
    echo "dataDir=$dataDir" >> /opt/zookeeper/conf/zoo.cfg;
fi;

if [[ ! -z "$dataDir" &&  ! -z "$id" ]]; then
    echo "$id" > $dataDir/myid
fi

if [[ ! -z "$clientPort" ]]; then
    echo "clientPort=$clientPort" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$maxClientCnxns" ]]; then
    echo "maxClientCnxns=$maxClientCnxns" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$autopurgeSnapRetainCount" ]]; then
    echo "autopurge.snapRetainCount=$autopurgeSnapRetainCount" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$autopurgePurgeInterval" ]]; then
    echo "autopurge.purgeInterval=$autopurgePurgeInterval" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$server1" ]]; then
    echo "server.1=$server1" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$server2" ]]; then
    echo "server.2=$server2" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$server3" ]]; then
    echo "server.3=$server3" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$server4" ]]; then
    echo "server.4=$server4" >> /opt/zookeeper/conf/zoo.cfg
fi

if [[ ! -z "$server5" ]]; then
    echo "server.5=$server5" >> /opt/zookeeper/conf/zoo.cfg
fi

echo "### Zookeeper Config Start ###"
cat /opt/zookeeper/conf/zoo.cfg
echo "### Zookeeper Config End ###"

/opt/zookeeper/bin/zkServer.sh start-foreground