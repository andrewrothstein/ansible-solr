#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://downloads.apache.org/solr/solr
# https://downloads.apache.org/solr/solr/9.1.1/solr-9.1.1.tgz.sha512
dl_ver() {
    local ver=$1
    local shasum=solr-${ver}.tgz.sha512
    local url=$MIRROR/$ver/$shasum

    printf "  # %s\n" $url
    printf "  '%s': sha512:%s\n" $ver $(curl -sSLf $url | awk '{print $1}')
}

dl_ver ${1:-9.1.1}
