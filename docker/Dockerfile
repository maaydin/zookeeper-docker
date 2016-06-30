FROM maaydin/centos-7-oracle-jre-8:latest
MAINTAINER maaydin
ENV container docker

# Environment Variables
ENV HTTP_PROXY="http://172.17.0.1:3128" HTTPS_PROXY="http://172.17.0.1:3128" ZOOKEEPER_VERSION="3.4.8"

ADD start-zookeeper.sh /usr/bin/start-zookeeper.sh

# Install Zookeeper
RUN echo "[main]" >> /etc/yum.conf; \
echo "proxy=$HTTP_PROXY" >> /etc/yum.conf; \
export http_proxy=$HTTP_PROXY; \
export https_proxy=$HTTPS_PROXY; \
curl -v -o /tmp/zookeeper-$ZOOKEEPER_VERSION.tar.gz https://archive.apache.org/dist/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz; \
cd /opt/ && tar -xzvf /tmp/zookeeper-$ZOOKEEPER_VERSION.tar.gz; \
ln -s /opt/zookeeper-$ZOOKEEPER_VERSION /opt/zookeeper; \
chmod +x /usr/bin/start-zookeeper.sh; \
yum clean all; \
rm -f /tmp/*; \
head -n -1 /etc/yum.conf > /etc/yum.conf;

EXPOSE 2181 2888 3888

CMD ["/usr/bin/start-zookeeper.sh"]