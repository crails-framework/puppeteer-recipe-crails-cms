#!/bin/bash -ex

BOOST_VERSION=1.74.0

source ./variables 2> /dev/null

apt-get update

apt-get install -y software-properties-common

apt-get install -y \
  rsync \
  libboost-date-time$BOOST_VERSION \
  libboost-program-options$BOOST_VERSION \
  libboost-filesystem$BOOST_VERSION \
  #libboost-json$BOOST_VERSION

if [[ ! -z "$REQUIRE_PACKAGES" ]] ; then
  apt-get install -y $REQUIRE_PACKAGES
fi
