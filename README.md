[![Docker Stars](https://img.shields.io/docker/stars/maaydin/centos-7-zookeeper.svg?maxAge=2592000)](https://img.shields.io/docker/stars/maaydin/centos-7-zookeeper.svg)
[![Docker Stars](https://img.shields.io/docker/pulls/maaydin/centos-7-zookeeper.svg?maxAge=2592000)](https://img.shields.io/docker/pulls/maaydin/centos-7-zookeeper.svg)
[![](https://badge.imagelayers.io/maaydin/centos-7-zookeeper:latest.svg)](https://imagelayers.io/?images=maaydin/centos-7-zookeeper:latest)

# zookeeper-docker
Dockerfile for [Apache Zookeeper](https://zookeeper.apache.org/)

##Pre-Requisites
- Install docker-compose [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

##Usage

Start a single node:

- ```cd path/to```
  ```bin/run-single-node.sh```

Start a quorum:

- ```cd path/to```
  ```bin/run-quorum.sh```

##Note

- Modify ```docker-compose.yml``` & ```zoo.env``` files according to your needs.