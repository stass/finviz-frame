#!/bin/sh -e

mydir=`dirname $0`
tmpfile=`mktemp ${mydir}/data.XXX`

echo var FinvizMapPerf = {
curl https://finviz.com/map.ashx | awk -F '{|}' '/FinvizMapPerf/ {print "var FinvizMapPerf = {" $2 "};"; exit}' > ${tmpfile}
mv ${tmpfile} ${mydir}/data.js
exit 0
