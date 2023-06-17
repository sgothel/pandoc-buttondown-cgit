#!/bin/sh

sdir=`dirname $(readlink -f $0)`
#rootdir=`dirname $sdir`
rootdir="$sdir"

ifile="$1"

if [ -z "${ifile}" ] ; then
    echo "Usage $0 input-file"
    exit
fi

title_name=`basename ${ifile}`

/usr/bin/pandoc \
  -M pagetitle="${title_name}" \
  --data-dir ${rootdir}/pandoc-data \
  --from gfm \
  --to html5+smart \
  --template=local-buttondown \
  --include-before-body="${rootdir}/pandoc-data/css/cgit-buttondown.css" \
  --toc \
  ${ifile}

