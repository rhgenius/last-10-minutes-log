#!/bin/sh

e=
for (( i = 10; i >= 0; i-- )) ; do
    e='-e /'`date +\%R -d "-$i min"`'/p '$e
done

$(sed -n $e syslog > newfile)
