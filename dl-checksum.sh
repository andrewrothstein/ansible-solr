#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://www.apache.org/dist/lucene/solr

dl_ver() {
    local ver=$1
    local shasum=solr-${ver}.tgz.sha512
    local url=$MIRROR/$ver/$shasum

    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver `curl -sSL $url | awk '{print $1}'`
}

dl_ver ${1:-8.4.0}
