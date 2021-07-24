# [Pandoc](https://pandoc.org/) template & stylesheet for `markdown` `html` rendering

## Summary

The stylesheet also includes `cgit` integration,
for which a shell filter invocation script is provided: `cgit/filters/html-converters/pandoc_md2html.sh`.

The original stylesheet was written by [Ryan Gray in Februrary 2021](https://gist.github.com/ryangray/1882525).

## Motivation

It was bothering me to have a broken incompatible markdown
rendering on our `cgit` project about pages, losing it to github.

I searched around and found `pandoc` plus the original stylesheet from Ryan.
Adding the TOC toggle, some `css` edits to please my taste and cgit integration
completed this little task.

Finally our project's about pages render nicely with a TOC
* [Direct-BT](https://jausoft.com/cgit/direct_bt.git/about/)
* [pi-gen](https://jausoft.com/cgit/pi-gen.git/about/)
* etc etc

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

