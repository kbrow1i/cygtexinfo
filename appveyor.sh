#!/bin/sh
exit_status=0

cygport texinfo.cygport fetch prep compile || exit_status=1

if [ $exit_status -eq 0 ]
then
    cygport texinfo.cygport inst pkg || exit_status=1
    cygport texinfo.cygport test || echo "Test(s) failed."
fi

tar -cJf artifact.tar.xz texinfo-*/dist texinfo-*/log

exit $exit_status
