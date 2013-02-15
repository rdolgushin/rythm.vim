Rythm template engine syntax plugin for Vim
===========================================

![rythm.vim screenshot](http://i.imgur.com/6po9oul.png)

Installation
------------

### Ways:

* Using [pathogen](https://github.com/tpope/vim-pathogen)
or [vundle](https://github.com/gmarik/vundle) from
https://github.com/rdolgushin/rythm.vim
* Standard [Vim way](http://vimdoc.sourceforge.net/htmldoc/usr_05.html#add-plugin)

Usage
-----

By default it recognizes Rythm templates stored in `rythm/` folder and files
with double extension corresponging to `*.rythm.html` pattern, but you can
extends this behaviour by adding custom `autocmd` in your `.vimrc` file. For
example:

```
au BufRead,BufNewFile */views/*.html :set ft=rythm
```

Tests
-----

For testing of syntax highlighting you can clone Rythm website
repository from https://github.com/greenlaw110/rythm-website.
