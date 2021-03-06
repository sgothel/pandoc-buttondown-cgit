# [Pandoc](https://pandoc.org/) template & stylesheet for `markdown` `html` rendering

## Summary

The stylesheet also includes `cgit` integration,
for which a shell filter invocation script is provided: `cgit/filters/html-converters/pandoc_md2html.sh`.

The original stylesheet was written by [Ryan Gray in Februrary 2011](https://gist.github.com/ryangray/1882525).

## cgit integration

If using the provided `cgit/filters/html-converters/pandoc_md2html.sh` 
via the given symbolic link to cgit's default `cgit/filters/html-converters/md2html`,
all about pages using markup are rendered nicely.

Note: cgit's `about-filter` hook `cgit/filters/about-formatting.sh` invokes `cgit/filters/html-converters/md2html`.

Additionally, if using the provided `cgit/filters/syntax-highlighting.sh`
via cgit's `source-filter` hook, html-converters are used for known extensions (markdown, rst, man, html, txt).
Note: This filter hook also invokes `cgit/filters/html-converters/md2html` for markup.

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

