#!/bin/sh

/usr/bin/pandoc \
  --data-dir /srv/www/pandoc-data \
  --from gfm \
  --to html5+smart \
  --template=cgit-buttondown \
  --include-before-body="/srv/www/pandoc-data/css/style-open.html" \
  --include-before-body="/srv/www/pandoc-data/css/cgit-buttondown.css" \
  --include-before-body="/srv/www/pandoc-data/css/style-close.html" \
  --toc

