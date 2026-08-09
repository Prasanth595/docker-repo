# Images

Complete catalog of every base image in this repository (`images/**/Dockerfile`).

## Naming convention

`build.sh` auto-discovers every Dockerfile under `images/` and publishes it as:

```text
ghcr.io/prasanth595/docker-repo/<category>-<name>-<version>:latest
```

## Catalog

### linux (39)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/linux/alpine/3.19` | `alpine:3.19` | `ghcr.io/prasanth595/docker-repo/linux-alpine-3.19:latest` |
| `images/linux/alpine/3.20` | `alpine:3.20` | `ghcr.io/prasanth595/docker-repo/linux-alpine-3.20:latest` |
| `images/linux/alpine/3.21` | `alpine:3.21` | `ghcr.io/prasanth595/docker-repo/linux-alpine-3.21:latest` |
| `images/linux/amazonlinux/2` | `amazonlinux:2` | `ghcr.io/prasanth595/docker-repo/linux-amazonlinux-2:latest` |
| `images/linux/amazonlinux/2023` | `amazonlinux:2023` | `ghcr.io/prasanth595/docker-repo/linux-amazonlinux-2023:latest` |
| `images/linux/arch/latest` | `archlinux:latest` | `ghcr.io/prasanth595/docker-repo/linux-arch-latest:latest` |
| `images/linux/archlinux/latest` | `archlinux:latest` | `ghcr.io/prasanth595/docker-repo/linux-archlinux-latest:latest` |
| `images/linux/busybox/1.36` | `busybox:1.36` | `ghcr.io/prasanth595/docker-repo/linux-busybox-1.36:latest` |
| `images/linux/centos/7` | `centos:7` | `ghcr.io/prasanth595/docker-repo/linux-centos-7:latest` |
| `images/linux/debian/12` | `debian:12` | `ghcr.io/prasanth595/docker-repo/linux-debian-12:latest` |
| `images/linux/debian/13` | `debian:13` | `ghcr.io/prasanth595/docker-repo/linux-debian-13:latest` |
| `images/linux/fedora/40` | `fedora:40` | `ghcr.io/prasanth595/docker-repo/linux-fedora-40:latest` |
| `images/linux/fedora/41` | `fedora:41` | `ghcr.io/prasanth595/docker-repo/linux-fedora-41:latest` |
| `images/linux/fedora/42` | `fedora:42` | `ghcr.io/prasanth595/docker-repo/linux-fedora-42:latest` |
| `images/linux/gentoo/stage3-amd64` | `gentoo/stage3:latest` | `ghcr.io/prasanth595/docker-repo/linux-gentoo-stage3-amd64:latest` |
| `images/linux/heroku/20` | `heroku/heroku:20` | `ghcr.io/prasanth595/docker-repo/linux-heroku-20:latest` |
| `images/linux/heroku/20-build` | `heroku/heroku:20-build` | `ghcr.io/prasanth595/docker-repo/linux-heroku-20-build:latest` |
| `images/linux/heroku/20-cnb` | `heroku/heroku:20-cnb` | `ghcr.io/prasanth595/docker-repo/linux-heroku-20-cnb:latest` |
| `images/linux/heroku/20-cnb-build` | `heroku/heroku:20-cnb-build` | `ghcr.io/prasanth595/docker-repo/linux-heroku-20-cnb-build:latest` |
| `images/linux/heroku/22` | `heroku/heroku:22` | `ghcr.io/prasanth595/docker-repo/linux-heroku-22:latest` |
| `images/linux/heroku/22-build` | `heroku/heroku:22-build` | `ghcr.io/prasanth595/docker-repo/linux-heroku-22-build:latest` |
| `images/linux/heroku/22-cnb` | `heroku/heroku:22-cnb` | `ghcr.io/prasanth595/docker-repo/linux-heroku-22-cnb:latest` |
| `images/linux/heroku/22-cnb-build` | `heroku/heroku:22-cnb-build` | `ghcr.io/prasanth595/docker-repo/linux-heroku-22-cnb-build:latest` |
| `images/linux/heroku/24` | `heroku/heroku:24` | `ghcr.io/prasanth595/docker-repo/linux-heroku-24:latest` |
| `images/linux/heroku/24-build` | `heroku/heroku:24-build` | `ghcr.io/prasanth595/docker-repo/linux-heroku-24-build:latest` |
| `images/linux/heroku/26` | `heroku/heroku:26` | `ghcr.io/prasanth595/docker-repo/linux-heroku-26:latest` |
| `images/linux/heroku/26-build` | `heroku/heroku:26-build` | `ghcr.io/prasanth595/docker-repo/linux-heroku-26-build:latest` |
| `images/linux/opensuse/15.6` | `opensuse/leap:15.6` | `ghcr.io/prasanth595/docker-repo/linux-opensuse-15.6:latest` |
| `images/linux/opensuse/tumbleweed` | `opensuse/tumbleweed:latest` | `ghcr.io/prasanth595/docker-repo/linux-opensuse-tumbleweed:latest` |
| `images/linux/oracle/8` | `oraclelinux:8` | `ghcr.io/prasanth595/docker-repo/linux-oracle-8:latest` |
| `images/linux/oracle/9` | `oraclelinux:9` | `ghcr.io/prasanth595/docker-repo/linux-oracle-9:latest` |
| `images/linux/redhat/9` | `registry.access.redhat.com/ubi9/ubi` | `ghcr.io/prasanth595/docker-repo/linux-redhat-9:latest` |
| `images/linux/rocky/9` | `rockylinux:9` | `ghcr.io/prasanth595/docker-repo/linux-rocky-9:latest` |
| `images/linux/slackware/15.0` | `vbatts/slackware:15.0` | `ghcr.io/prasanth595/docker-repo/linux-slackware-15.0:latest` |
| `images/linux/ubuntu/20.04` | `ubuntu:20.04` | `ghcr.io/prasanth595/docker-repo/linux-ubuntu-20.04:latest` |
| `images/linux/ubuntu/22.04` | `ubuntu:22.04` | `ghcr.io/prasanth595/docker-repo/linux-ubuntu-22.04:latest` |
| `images/linux/ubuntu/24.04` | `ubuntu:24.04` | `ghcr.io/prasanth595/docker-repo/linux-ubuntu-24.04:latest` |
| `images/linux/ubuntu/25.04` | `ubuntu:25.04` | `ghcr.io/prasanth595/docker-repo/linux-ubuntu-25.04:latest` |
| `images/linux/ubuntu/26.04` | `ubuntu:26.04` | `ghcr.io/prasanth595/docker-repo/linux-ubuntu-26.04:latest` |

### windows (4)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/windows/nanoserver/2022` | `mcr.microsoft.com/windows/nanoserver:ltsc2022` | `ghcr.io/prasanth595/docker-repo/windows-nanoserver-2022:latest` |
| `images/windows/nanoserver/ltsc2022` | `mcr.microsoft.com/windows/nanoserver:ltsc2022` | `ghcr.io/prasanth595/docker-repo/windows-nanoserver-ltsc2022:latest` |
| `images/windows/servercore/2022` | `mcr.microsoft.com/windows/servercore:ltsc2022` | `ghcr.io/prasanth595/docker-repo/windows-servercore-2022:latest` |
| `images/windows/servercore/ltsc2022` | `mcr.microsoft.com/windows/servercore:ltsc2022` | `ghcr.io/prasanth595/docker-repo/windows-servercore-ltsc2022:latest` |

### macos (1)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/macos/base/12` | `alpine:3.19` | `ghcr.io/prasanth595/docker-repo/macos-base-12:latest` |

### languages (32)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/languages/bundler` | `ubuntu:22.04` | `ghcr.io/prasanth595/docker-repo/languages-bundler:latest` |
| `images/languages/ccache` | `ubuntu:22.04` | `ghcr.io/prasanth595/docker-repo/languages-ccache:latest` |
| `images/languages/composer` | `ubuntu:22.04` | `ghcr.io/prasanth595/docker-repo/languages-composer:latest` |
| `images/languages/dart/stable` | `dart:stable` | `ghcr.io/prasanth595/docker-repo/languages-dart-stable:latest` |
| `images/languages/docker-cli` | `ubuntu:22.04` | `ghcr.io/prasanth595/docker-repo/languages-docker-cli:latest` |
| `images/languages/dotnet/8` | `mcr.microsoft.com/dotnet/sdk:8.0` | `ghcr.io/prasanth595/docker-repo/languages-dotnet-8:latest` |
| `images/languages/dotnet/9` | `mcr.microsoft.com/dotnet/sdk:9.0` | `ghcr.io/prasanth595/docker-repo/languages-dotnet-9:latest` |
| `images/languages/elixir/1.18` | `elixir:1.18` | `ghcr.io/prasanth595/docker-repo/languages-elixir-1.18:latest` |
| `images/languages/erlang/27` | `erlang:27` | `ghcr.io/prasanth595/docker-repo/languages-erlang-27:latest` |
| `images/languages/go/1.22` | `golang:1.22-alpine` | `ghcr.io/prasanth595/docker-repo/languages-go-1.22:latest` |
| `images/languages/go/1.24` | `golang:1.24-alpine` | `ghcr.io/prasanth595/docker-repo/languages-go-1.24:latest` |
| `images/languages/gradle` | `eclipse-temurin:21-jdk` | `ghcr.io/prasanth595/docker-repo/languages-gradle:latest` |
| `images/languages/haskell/9.10` | `haskell:9.10` | `ghcr.io/prasanth595/docker-repo/languages-haskell-9.10:latest` |
| `images/languages/java/17` | `eclipse-temurin:17-jdk-jammy` | `ghcr.io/prasanth595/docker-repo/languages-java-17:latest` |
| `images/languages/java/21` | `eclipse-temurin:21-jdk` | `ghcr.io/prasanth595/docker-repo/languages-java-21:latest` |
| `images/languages/java/24` | `eclipse-temurin:24-jdk` | `ghcr.io/prasanth595/docker-repo/languages-java-24:latest` |
| `images/languages/julia/1.12.1` | `julia:1.12.1` | `ghcr.io/prasanth595/docker-repo/languages-julia-1.12.1:latest` |
| `images/languages/node/20` | `node:20-alpine` | `ghcr.io/prasanth595/docker-repo/languages-node-20:latest` |
| `images/languages/node/22` | `node:22-alpine` | `ghcr.io/prasanth595/docker-repo/languages-node-22:latest` |
| `images/languages/node/24` | `node:24-alpine` | `ghcr.io/prasanth595/docker-repo/languages-node-24:latest` |
| `images/languages/nuget` | `ubuntu:22.04` | `ghcr.io/prasanth595/docker-repo/languages-nuget:latest` |
| `images/languages/perl/5.40` | `perl:5.40-slim` | `ghcr.io/prasanth595/docker-repo/languages-perl-5.40:latest` |
| `images/languages/php/8.3` | `php:8.3-cli` | `ghcr.io/prasanth595/docker-repo/languages-php-8.3:latest` |
| `images/languages/php/8.4` | `php:8.4-cli` | `ghcr.io/prasanth595/docker-repo/languages-php-8.4:latest` |
| `images/languages/python/3.11` | `python:3.11-slim` | `ghcr.io/prasanth595/docker-repo/languages-python-3.11:latest` |
| `images/languages/python/3.12` | `python:3.12-slim` | `ghcr.io/prasanth595/docker-repo/languages-python-3.12:latest` |
| `images/languages/python/3.13` | `python:3.13-slim` | `ghcr.io/prasanth595/docker-repo/languages-python-3.13:latest` |
| `images/languages/ruby/3.3` | `ruby:3.3-slim` | `ghcr.io/prasanth595/docker-repo/languages-ruby-3.3:latest` |
| `images/languages/ruby/3.4` | `ruby:3.4-slim` | `ghcr.io/prasanth595/docker-repo/languages-ruby-3.4:latest` |
| `images/languages/rust/1.76` | `rust:1.76` | `ghcr.io/prasanth595/docker-repo/languages-rust-1.76:latest` |
| `images/languages/rust/1.80` | `rust:1.80` | `ghcr.io/prasanth595/docker-repo/languages-rust-1.80:latest` |
| `images/languages/swift/6.0` | `swift:6.0` | `ghcr.io/prasanth595/docker-repo/languages-swift-6.0:latest` |

### databases (22)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/databases/cassandra/4` | `cassandra:4` | `ghcr.io/prasanth595/docker-repo/databases-cassandra-4:latest` |
| `images/databases/couchbase/7.6.0` | `couchbase:7.6.0` | `ghcr.io/prasanth595/docker-repo/databases-couchbase-7.6.0:latest` |
| `images/databases/couchdb/3` | `couchdb:3` | `ghcr.io/prasanth595/docker-repo/databases-couchdb-3:latest` |
| `images/databases/elasticsearch/8.17.2` | `elasticsearch:8.17.2` | `ghcr.io/prasanth595/docker-repo/databases-elasticsearch-8.17.2:latest` |
| `images/databases/influxdb/2` | `influxdb:2` | `ghcr.io/prasanth595/docker-repo/databases-influxdb-2:latest` |
| `images/databases/mariadb/10.11` | `mariadb:10.11` | `ghcr.io/prasanth595/docker-repo/databases-mariadb-10.11:latest` |
| `images/databases/mariadb/11` | `mariadb:11` | `ghcr.io/prasanth595/docker-repo/databases-mariadb-11:latest` |
| `images/databases/memcached/1.6` | `memcached:1.6` | `ghcr.io/prasanth595/docker-repo/databases-memcached-1.6:latest` |
| `images/databases/mongo/7` | `mongo:7` | `ghcr.io/prasanth595/docker-repo/databases-mongo-7:latest` |
| `images/databases/mongo/8` | `mongo:8` | `ghcr.io/prasanth595/docker-repo/databases-mongo-8:latest` |
| `images/databases/mysql/8.4` | `mysql:8.4` | `ghcr.io/prasanth595/docker-repo/databases-mysql-8.4:latest` |
| `images/databases/mysql/8` | `mysql:8` | `ghcr.io/prasanth595/docker-repo/databases-mysql-8:latest` |
| `images/databases/mysql/9` | `mysql:9` | `ghcr.io/prasanth595/docker-repo/databases-mysql-9:latest` |
| `images/databases/neo4j/5` | `neo4j:5` | `ghcr.io/prasanth595/docker-repo/databases-neo4j-5:latest` |
| `images/databases/oracle/23.5` | `container-registry.oracle.com/database/free:23.5.0.0` | `ghcr.io/prasanth595/docker-repo/databases-oracle-23.5:latest` |
| `images/databases/postgres/16` | `postgres:16` | `ghcr.io/prasanth595/docker-repo/databases-postgres-16:latest` |
| `images/databases/postgres/17` | `postgres:17` | `ghcr.io/prasanth595/docker-repo/databases-postgres-17:latest` |
| `images/databases/postgres/18` | `postgres:18` | `ghcr.io/prasanth595/docker-repo/databases-postgres-18:latest` |
| `images/databases/redis/7` | `redis:7` | `ghcr.io/prasanth595/docker-repo/databases-redis-7:latest` |
| `images/databases/redis/8` | `redis:8` | `ghcr.io/prasanth595/docker-repo/databases-redis-8:latest` |
| `images/databases/solr/9` | `solr:9` | `ghcr.io/prasanth595/docker-repo/databases-solr-9:latest` |
| `images/databases/sqlserver/2022` | `mcr.microsoft.com/mssql/server:2022-latest` | `ghcr.io/prasanth595/docker-repo/databases-sqlserver-2022:latest` |

### messaging (5)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/messaging/activemq/6.2.0` | `apache/activemq-classic:6.2.0` | `ghcr.io/prasanth595/docker-repo/messaging-activemq-6.2.0:latest` |
| `images/messaging/kafka/3.9.0` | `apache/kafka:3.9.0` | `ghcr.io/prasanth595/docker-repo/messaging-kafka-3.9.0:latest` |
| `images/messaging/nats/2` | `nats:2` | `ghcr.io/prasanth595/docker-repo/messaging-nats-2:latest` |
| `images/messaging/rabbitmq/4` | `rabbitmq:4` | `ghcr.io/prasanth595/docker-repo/messaging-rabbitmq-4:latest` |
| `images/messaging/zookeeper/3.9` | `zookeeper:3.9` | `ghcr.io/prasanth595/docker-repo/messaging-zookeeper-3.9:latest` |

### servers (5)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/servers/caddy/2` | `caddy:2` | `ghcr.io/prasanth595/docker-repo/servers-caddy-2:latest` |
| `images/servers/httpd/2.4` | `httpd:2.4` | `ghcr.io/prasanth595/docker-repo/servers-httpd-2.4:latest` |
| `images/servers/nginx/1.29` | `nginx:1.29` | `ghcr.io/prasanth595/docker-repo/servers-nginx-1.29:latest` |
| `images/servers/tomcat/10` | `tomcat:10` | `ghcr.io/prasanth595/docker-repo/servers-tomcat-10:latest` |
| `images/servers/traefik/3.7.0` | `ghcr.io/traefik/traefik:v3.7.0` | `ghcr.io/prasanth595/docker-repo/servers-traefik-3.7.0:latest` |

### tools (4)

| Local path | Base image (FROM) | Published as |
|---|---|---|
| `images/tools/gcc/14` | `gcc:14` | `ghcr.io/prasanth595/docker-repo/tools-gcc-14:latest` |
| `images/tools/git/2.54.0` | `alpine/git:2.54.0` | `ghcr.io/prasanth595/docker-repo/tools-git-2.54.0:latest` |
| `images/tools/gradle/8` | `gradle:8.10-jdk21` | `ghcr.io/prasanth595/docker-repo/tools-gradle-8:latest` |
| `images/tools/maven/3.9` | `maven:3.9-eclipse-temurin-21` | `ghcr.io/prasanth595/docker-repo/tools-maven-3.9:latest` |

## Notes

- Images are minimal wrappers around public upstream images; extend them in derived Dockerfiles.

- Some images come from non-Docker Hub registries (MCR, Red Hat, Oracle, GHCR). They are public and anonymously pullable; the publish target is always `ghcr.io/prasanth595/docker-repo`.

- Windows images require a Windows-based build host.

- The macOS image is a placeholder (Docker does not officially support macOS base images).
