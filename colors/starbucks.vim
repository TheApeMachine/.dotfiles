" -----------------------------------------------------------------------------------
" File: saltoftheearth.vim
" Description: Vim colorscheme based on earthy colors.
" Author: theapemachine <daniel.van.dommelen@gmail.com>
" Source: https://github.com/theapemachine/saltoftheearth
" Last Modified: 01 March 2020
" -----------------------------------------------------------------------------------

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name='scarface'

let g:background='#3c2f2f'
let g:foreground='#fff4e6'
let g:midground='#4b3832'
let g:accent='#be9b7b'
let g:contrast='#854442'
let g:yellow='#ffcc33'
let g:green='#02d995'
let g:blue='#a2d8c7'
let g:purple='#b593ff'
let g:pink='#800058'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

syntax match TrailingSpace /\s\+$/
hi TrailingSpace guibg=red

execute 'hi Normal guibg=' . g:background . ' guifg=' . g:foreground
execute 'hi LineNr guifg=' . g:contrast
execute 'hi NonText guifg=' . g:contrast
execute 'hi CursorLineNr guifg=' . g:foreground
execute 'hi CursorLine cterm=none guibg=' . g:background
execute 'hi VertSplit guibg=' . g:background . ' guifg=' . g:background
execute 'hi StatusLine guibg=' . g:background . ' guifg=' . g:accent
execute 'hi StatusLineNC guibg=' . g:background . ' guifg=' . g:accent
execute 'hi StatusLineTerm guibg=' . g:background . ' guifg=' . g:accent
execute 'hi StatusLineTermNC guibg=' . g:background . ' guifg=' . g:accent
execute 'hi TabLine guibg=' . g:background . ' guifg=' . g:accent
execute 'hi MatchParen cterm=none guibg=' . g:pink . ' guifg=' . g:foreground

execute 'hi vimLet guifg=' . g:accent
execute 'hi vimVar guifg=' . g:foreground
execute 'hi vimCommand guifg=' . g:accent
execute 'hi vimString guifg=' . g:green
execute 'hi vimOper guifg=' . g:accent
execute 'hi vimSynType guifg=' . g:foreground
execute 'hi vimGroupName guifg=' . g:accent
execute 'hi vimHiGuiFgBg guifg=' . g:foreground
execute 'hi vimFuncName guifg=' . g:foreground
execute 'hi vimLineComment guifg=' . g:contrast
execute 'hi vimCommentTitle guifg=' . g:accent
execute 'hi vimNumber guifg=' . g:yellow

execute 'hi netrwComment guifg=' . g:contrast
execute 'hi netrwDir guifg=' . g:accent
execute 'hi netrwClassify guifg=' . g:accent

execute 'hi goPackage guifg=' . g:accent
execute 'hi goImport guifg=' . g:accent
execute 'hi goVar guifg=' . g:accent
execute 'hi goString guifg=' . g:green
execute 'hi goDeclaration guifg=' . g:accent
execute 'hi goComment guifg=' . g:contrast
execute 'hi goFunctionCall guifg=' . g:accent
execute 'hi goField guifg=' . g:blue
execute 'hi goConditional guifg=' . g:accent
execute 'hi goOperator guifg=' . g:accent
execute 'hi goFunction guifg=' . g:purple
execute 'hi goPredefinedIdentifiers guifg=' . g:foreground
execute 'hi goTypeName guifg=' . g:yellow
execute 'hi goTypeConstructor guifg=' . g:yellow
execute 'hi goReceiverType guifg=' . g:yellow
execute 'hi goTypeDecl guifg=' . g:accent
execute 'hi goDeclType guifg=' . g:accent
execute 'hi goStatement guifg=' . g:accent
execute 'hi goRawString guifg=' . g:green
execute 'hi goType guifg=' . g:blue
execute 'hi goUnsignedInts guifg=' . g:yellow
execute 'hi goExtraType guifg=' . g:yellow
execute 'hi goDecimalInt guifg=' . g:yellow
execute 'hi goFloat guifg=' . g:yellow
execute 'hi goBuiltins guifg=' . g:yellow
execute 'hi goLabel guifg=' . g:yellow
execute 'hi goRepeat guifg=' . g:yellow
execute 'hi goFormatSpecifier guifg=' . g:yellow
execute 'hi goSignedInts guifg=' . g:yellow
execute 'hi goFloats guifg=' . g:blue
execute 'hi goTodo guifg=' . g:midground
execute 'hi goConst guifg=' . g:yellow
execute 'hi goBoolean guifg=' . g:blue

execute 'hi pythonInclude guifg=' . g:accent
execute 'hi pythonStatement guifg=' . g:accent
execute 'hi pythonFunction guifg=' . g:yellow
execute 'hi pythonBuiltin guifg=' . g:yellow
execute 'hi pythonString guifg=' . g:green
execute 'hi pythonQuotes guifg=' . g:green
execute 'hi pythonConditional guifg=' . g:accent
execute 'hi pythonOperator guifg=' . g:accent
execute 'hi pythonException guifg=' . g:contrast
execute 'hi pythonExceptions guifg=' . g:yellow
execute 'hi pythonComment guifg=' . g:contrast

execute 'hi javaScript guifg=' . g:foreground
execute 'hi javaScriptReserved guifg=' . g:accent
execute 'hi javaScriptStringS guifg=' . g:green
execute 'hi javaScriptStringT guifg=' . g:green
execute 'hi javaScriptBraces guifg=' . g:accent
execute 'hi javaScriptBoolean guifg=' . g:yellow
execute 'hi javaScriptNull guifg=' . g:yellow
execute 'hi javaScriptIdentifier guifg=' . g:accent
execute 'hi javaScriptComment guifg=' . g:contrast
execute 'hi javaScriptLineComment guifg=' . g:contrast
execute 'hi javaScriptConditional guifg=' . g:accent
execute 'hi javaScriptOperator guifg=' . g:accent
execute 'hi javaScriptLabel guifg=' . g:foreground
execute 'hi javaScriptStatement guifg=' . g:yellow
execute 'hi javaScriptMember guifg=' . g:yellow
execute 'hi javaScriptRepeat guifg=' . g:yellow
execute 'hi javaScriptGlobal guifg=' . g:yellow
execute 'hi javaScriptType guifg=' . g:yellow
execute 'hi javaScriptFunction guifg=' . g:yellow

execute 'hi htmlTagName guifg=' . g:accent
execute 'hi htmlTag guifg=' . g:accent
execute 'hi htmlScriptTag guifg=' . g:accent
execute 'hi htmlTagN guifg=' . g:accent
execute 'hi htmlEndTag guifg=' . g:accent
execute 'hi htmlSpecialTagName guifg=' . g:accent
execute 'hi erubyDelimiter guifg=' . g:accent
execute 'hi htmlTitle guifg=' . g:accent
execute 'hi htmlString guifg=' . g:green
execute 'hi htmlArg guifg=' . g:foreground
