" Vim filetype plugin file
" Language:	Rythm template
" Maintainer:	Roman Dolgushin <rd@roman-dolgushin.ru>
" URL:		http://github.com/rdolgushin/rythm.vim
" ---
"  Based on https://github.com/eiffelhub/vim-eiffel/blob/master/ftplugin/eiffel.vim

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Matchit handling

" The following lines enable the macros/matchit.vim plugin for
" extended matching with the % key.

if exists("loaded_matchit")
  let b:match_ignorecase = 0
  if !exists("b:match_words") |
    let b:match_words = '<:>,<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
  endif
endif
