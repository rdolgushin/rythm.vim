" Vim syntax file
" Language:	Rythm template
" Maintainer:	Roman Dolgushin <rd@roman-dolgushin.ru>
" URL:		http://github.com/rdolgushin/rythm.vim
" ---
" Based on https://github.com/gre/play2vim/blob/master/syntax/play2-html.vim

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Source HTML syntax
if version < 600
  source <sfile>:p:h/html.vim
  source <sfile>:p:h/html/html5.vim
else
  runtime! syntax/html.vim
  runtime! syntax/html/html5.vim
endif
unlet b:current_syntax

syn include @java syntax/java.vim

syn match  rythmExprIdentifier "@"                nextgroup=rythmExpr
syn match  rythmExprIdentifier /@[A-Za-z0-9.?]\+/ nextgroup=rythmExpr
syn match  rythmOneLineComment "@//.*"
syn region rythmBlockComment   start=/@[*]/       end=/[*]@/
syn match  rythmOverrided      "@@"

syn region rythmExpr matchgroup=rythmExprIdentifier start="("  end=")"
      \ contains=@java,rythmExpr contained nextgroup=rythmExpr
syn region rythmExpr matchgroup=rythmExprIdentifier start="{"  end="}"
      \ contains=@java,rythmExpr contained nextgroup=rythmExpr
syn region rythmExpr matchgroup=rythmExprIdentifier start="\[" end="\]"
      \ contains=@java,rythmExpr contained nextgroup=rythmExpr
syn region htmlTag start=+<[^/%]+ end=+>+
      \ contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,
      \ htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster,rythmExpr

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_rythm_syn_inits")
  if version < 508
    let did_rythm_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink rythmExprIdentifier  Identifier
  HiLink rythmOneLineComment  Comment
  HiLink rythmBlockComment    Comment
  HiLink rythmOverrided       Default

  delcommand HiLink
endif

let b:current_syntax = "rythm"
