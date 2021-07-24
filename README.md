# [Pandoc](https://pandoc.org/) template and stylesheet for `markdown`

The stylesheet also includes `cgit` integration,
for which a shell filter invocation script is provided: `cgit/filters/html-converters/pandoc_md2html.sh`.

The original stylesheet was written by [Ryan Gray in Februrary 2021](https://gist.github.com/ryangray/1882525).

~Sven Gothel

## Dependencies

* pandoc
* Makefile (optional)
    * make
    * cpp
    * grep
    * cat 
    * tar

## Build

Simply issue 
```bash
    make
```
to produce the stripped `pandoc-data/css/cgit-buttondown.css`,
used in `cgit/filters/html-converters/pandoc_md2html.sh`.

It also produces the `pandoc-buttondown-cgit.tgz` tar ball for easy deployment.

