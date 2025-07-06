#!/bin/sh

# set -x 

sdir=`dirname $(readlink -f $0)`
#rootdir=`dirname $sdir`
rootdir="$sdir"

ifile="$1"

if [ -z "${ifile}" ] ; then
    echo "Usage $0 input-file"
    exit
fi

title_name=`basename ${ifile}`

#  --from gfm \
#  --from markdown \
#  --from markdown+lists_without_preceding_blankline \
#  --from markdown_phpextra+auto_identifiers \
#  --from markdown_phpextra+auto_identifiers+gfm_auto_identifiers \

/usr/bin/pandoc \
  -M pagetitle="${title_name}" \
  --data-dir ${rootdir}/pandoc-data \
  --from markdown+lists_without_preceding_blankline \
  --to html5+smart \
  --template=local-buttondown \
  --include-before-body="${rootdir}/pandoc-data/css/cgit-buttondown.css" \
  --toc \
  ${ifile}

