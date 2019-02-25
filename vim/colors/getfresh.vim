" Vim color scheme
"
" Name:        getfresh.vim
" Maintainer:  Christian Brassat <crshd@mail.com>
" License:     public domain
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "getfresh"

" General Colors
let NormalFG      = '#DDCCBB'

"let NormalFG      = '#30251D'
let NormalBG      = '#151515'

let DarkGray      = '#393939'
let LightGray     = '#AF875F'

let DarkRed       = '#BF1E2D'
let LightRed      = '#E7212A'

let DarkGreen     = '#9DBA3A'
let LightGreen    = '#A9C938'

let DarkYellow    = '#F5B915'
let LightYellow   = '#F7D325'

let DarkBlue      = '#1CA1DB'
let LightBlue     = '#00AFDA'

let DarkMagenta   = '#652F90'
let LightMagenta  = '#894E9F'

let DarkCyan      = '#EA7D24'
let LightCyan     = '#F79321'

let White         = '#E7E8E9'

" Specific Colors
let CursorColor   = '#FF8939'
let CursorLColor  = '#202020'

let LineNrFG      = '#555555'
let LineNrBG      = '#101010'

let FoldFG        = DarkCyan
let FoldLineBG    = NormalBG
let FoldColBG     = '#050505'

let SplitFG       = '#1B1B1B'
let SplitBG       = SplitFG

let StatusBG      = DarkGray

" GUI - bold/italic/underline/none 
let GUI           = 'none'

" Different Font
let OtherFont     = '-*-neep-medium-*-*-*-10-*-*-*-*-*-*-*'

exe 'hi Nontext                   ctermfg=7 guifg='.LightGray
exe 'hi Normal                    guifg='.NormalFG.'      guibg='.NormalBG
exe 'hi Cursor                    ctermbg=1                        guibg='.CursorColor
exe 'hi CursorLine                ctermfg=NONE ctermbg=NONE                        guibg='.CursorLColor
exe 'hi LineNr                    ctermfg=8 guifg='.LineNrFG.'      guibg='.LineNrBG
exe 'hi Search                                            ctermbg=14 guibg='.DarkCyan
exe 'hi VertSplit                 guifg='.SplitFG.'       guibg='.SplitBG
exe 'hi Visual                    ctermbg=14                         guibg='.DarkCyan
exe 'hi Folded                    ctermfg=7 guifg='.FoldFG.'    ctermbg=8    guibg='.FoldLineBG
exe 'hi FoldColumn                ctermfg=14 guifg='.FoldFG.'        guibg='.FoldColBG
exe 'hi Directory                 ctermfg=2 guifg='.LightGreen
exe 'hi Pmenu                     ctermbg=8 guifg='.NormalFG.'      guibg='.LightGray
exe 'hi PmenuSel                  ctermbg=8 guifg='.DarkGray.'      guibg='.LightGreen
exe 'hi PMenuSbar                 ctermbg=14                        guibg='.DarkCyan
exe 'hi PMenuThumb                ctermbg=10                        guibg='.DarkGreen
exe 'hi Comment                   ctermfg=8 guifg='.LightGray.'                                       font='.OtherFont
exe 'hi Todo                      ctermfg=8 guifg='.LightGray.'     guibg=NONE'
exe 'hi NonText                   ctermfg=14 guifg='.DarkCyan
exe 'hi SpecialKey                ctermfg=14 guifg='.DarkCyan
exe 'hi Constant                  ctermfg=12 guifg='.DarkBlue
exe 'hi Define                    ctermfg=7 guifg='.White.'                           gui='.GUI
exe 'hi Delimiter                 ctermfg=13 guifg='.DarkMagenta
exe 'hi Error                     ctermfg=0 guifg='.DarkGray.'    ctermbg=9  guibg='.DarkRed
exe 'hi Function                  ctermfg=9 guifg='.DarkRed.'                             gui='.GUI
exe 'hi Identifier                ctermfg=3 guifg='.LightYellow
exe 'hi Include                   ctermfg=11 guifg='.DarkYellow.'                          gui='.GUI
exe 'hi Keyword                   ctermfg=13 guifg='.DarkMagenta
exe 'hi Macro                     ctermfg=13 guifg='.DarkMagenta
exe 'hi Number                    ctermfg=2 guifg='.LightGreen
exe 'hi PreCondit                 ctermfg=13 guifg='.DarkMagenta.'                         gui='.GUI
exe 'hi PreProc                   ctermfg=11 guifg='.DarkYellow
exe 'hi Statement                 ctermfg=4 guifg='.LightBlue.'                           gui='.GUI
exe 'hi String                    ctermfg=7 guifg='.White
exe 'hi Title                     ctermfg=8 guifg='.LightGray
exe 'hi Type                      ctermfg=9 guifg='.DarkRed.'                             gui='.GUI
exe 'hi DiffAdd                   ctermfg=0 guifg='.DarkGray.'  ctermbg=2  guibg='.LightGreen
exe 'hi DiffDelete                ctermfg=0 guifg='.DarkGray.'  ctermbg=1  guibg='.LightRed

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

exe 'hi xmlTag                    guifg='.LightMagenta
exe 'hi xmlTagName                guifg='.LightMagenta
exe 'hi xmlEndTag                 guifg='.LightMagenta

" Status line - changes colors depending on insert mode
" Standard
exe 'hi User1                     ctermfg=11 guifg='.DarkYellow.'  guibg='.StatusBG.'      gui='.GUI
exe 'hi User2                     ctermfg=9 guifg='.DarkRed.'     guibg='.StatusBG.'      gui='.GUI
exe 'hi User3                     ctermfg=2 guifg='.LightGreen.'  guibg='.StatusBG.'      gui='.GUI
exe 'hi User4                     ctermfg=0 guifg='.DarkGray.'    guibg='.DarkMagenta.'   gui='.GUI
exe 'hi User5                     guifg='.NormalFG.'    guibg='.StatusBG
exe 'hi User6                     ctermfg=15 guifg='.LightGray.'   guibg='.StatusBG
exe 'hi User7                     guifg='.StatusBG.'    guibg='.StatusBG.'      gui='.GUI
exe 'hi StatusLine                guifg='.NormalFG.'    guibg='.StatusBG.'      gui='.GUI
exe 'hi StatusLineNC              ctermfg=15 guifg='.LightGray.'   guibg='.StatusBG.'      gui='.GUI

function! InsertStatuslineColor(mode)
  let DarkGray      = '#101010'
  let DarkRed       = '#E84F4F'
  let DarkBlue      = '#7DC1CF'
  let DarkMagenta   = '#9B64FB'

  if a:mode == 'i' " Insert Mode
    exe 'hi User4                 ctermfg=0 ctermbg=12 guifg='.DarkGray.'    guibg='.DarkBlue

  elseif a:mode == 'r' " Replace Mode
    exe 'hi User4                 ctermfg=0 ctermbg=9 guifg='.DarkGray.'    guibg='.DarkRed

  else
    exe 'hi User4                 ctermbg=6 ctermfg=0 guifg='.DarkGray.'    guibg='.DarkMagenta

  endif
endfunction

" Call function
exe 'au InsertEnter * call InsertStatuslineColor(v:insertmode)'
exe 'au InsertLeave * hi statusline ctermbg=NONE guifg='.NormalFG.' guibg='.StatusBG
exe 'au InsertLeave * hi User4      ctermbg=NONE guifg='.DarkGray.' guibg='.DarkMagenta
