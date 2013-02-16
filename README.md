Rythm template engine plugin for Vim
====================================

![rythm.vim screenshot](http://i.imgur.com/McbBxhw.png)


Installation ways
-----------------

* Using [pathogen](https://github.com/tpope/vim-pathogen)
or [vundle](https://github.com/gmarik/vundle) from
https://github.com/rdolgushin/rythm.vim
* Standard [Vim way](http://vimdoc.sourceforge.net/htmldoc/usr_05.html#add-plugin)
from http://www.vim.org/scripts/script.php?script_id=4438


Usage
-----

By default, it recognizes Rythm templates stored in `rythm/` folder and files
with double extension corresponging to `*.rythm.html` pattern, but you can
extend this behaviour by adding custom `autocmd` in your `.vimrc` file.
For example:

```
au BufRead,BufNewFile */views/*.html :set ft=rythm
```


Integration with other plugins
------------------------------

This plugin was written with built-in support of:

* [vundle](https://github.com/gmarik/vundle)
* [pathogen](https://github.com/tpope/vim-pathogen)
* [snipMate](https://github.com/msanders/snipmate.vim)
* [matchit](http://www.vim.org/scripts/script.php?script_id=39)


Testing
-------

For testing of this plugin you can clone Rythm website
repository from https://github.com/greenlaw110/rythm-website or use
`samples-and-tests` from Rythm [repository](https://github.com/greenlaw110/play-rythm).
