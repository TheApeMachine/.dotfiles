" -----------------------------------------------------------------------------------
" File: scarface.vim
" Description: Vim colorscheme based on the 80s Miami themes from the movie Scarface.
" Author: theapemachine <daniel.van.dommelen@gmail.com>
" Source: https://github.com/theapemachine/scarface
" Last Modified: 30 Sep 2019
" -----------------------------------------------------------------------------------

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='scarface'

let g:lo_grey='#666666'
let g:hi_purple='#bd00ff'
let g:md_purple='#710094'
let g:lo_purple='#290036'
let g:hi_pink='#ff00bb'
let g:hi_green='#00ffaa'
let g:md_green='#00c986'
let g:lo_green='#008a5c'
let g:hi_yellow='#ffdd00'
let g:hi_orange='#ff8000'
let g:hi_red='#ff0000'
let g:hi_blue='#00eeff'
let g:md_blue='#03afff'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

execute 'hi Normal guibg=' . g:lo_purple
execute 'hi LineNr guifg=' . g:md_purple
execute 'hi CursorLineNr guifg=' . g:hi_purple
execute 'hi CursorLine cterm=none guibg=' . g:md_purple
execute 'hi MatchParen guibg=' . g:md_purple

execute 'hi Comment guifg=' . g:lo_grey
execute 'hi String guifg=' . g:hi_green
execute 'hi Number guifg=' . g:hi_yellow
execute 'hi Exception guifg=' . g:hi_red
execute 'hi Boolean guifg=' . g:md_blue
execute 'hi Define guifg=' . g:hi_pink

execute 'hi goPackage guifg=' . g:hi_pink
execute 'hi goDeclaration guifg=' . g:hi_pink
execute 'hi goImport guifg=' . g:hi_pink
execute 'hi goStatement guifg=' . g:hi_pink
execute 'hi goDeclType guifg=' . g:hi_blue
execute 'hi goType guifg=' . g:hi_blue

execute 'hi pythonImport guifg=' . g:hi_pink
execute 'hi pythonStatement guifg=' . g:hi_pink
execute 'hi pythonOperator guifg=' . g:hi_orange
execute 'hi pythonRepeat guifg=' . g:md_blue
execute 'hi pythonConditional guifg=' . g:md_blue
execute 'hi pythonClassVar guifg=' . g:md_blue

execute 'hi rubyControl guifg=' . g:hi_pink
execute 'hi rubyConditional guifg=' . g:md_green
execute 'hi rubyConditionalModifier guifg=' . g:md_green
execute 'hi rubyStringDelimiter guifg=' . g:md_green
execute 'hi rubyInterpolationDelimiter guifg=' . g:md_green
execute 'hi rubyInteger guifg=' . g:hi_yellow
