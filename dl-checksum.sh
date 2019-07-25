#!/usr/bin/env sh
VER=8.2.0
DIR=~/Downloads
SHASUM=solr-${VER}.tgz.sha512
URL=https://www.apache.org/dist/lucene/solr/$VER/$SHASUM

printf "  # %s\n" $URL
printf "  '%s': sha512:%s\n" $VER `curl -sSL $URL | awk '{print $1}'`
