#!/bin/sh
set -e

echo fetching...
cygport texinfo.cygport fetch

echo prepping...
cygport texinfo.cygport prep

echo compiling...
cygport texinfo.cygport compile

echo installing...
cygport texinfo.cygport inst

echo packaging...
cygport texinfo.cygport pkg

tar -cJf artifact.tar.xz texinfo-*/dist texinfo-*/log

echo testing...
cygport texinfo.cygport test
