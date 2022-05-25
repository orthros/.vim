" VIM color file
"
" Note: Based on the Witch Hazel Hypercolor theme for Sublime Text


hi clear

set background=dark
if version > 580
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name="Witch Hazel Hypercolor"

hi Character       guifg=#C5A3FF guibg=None guisp=None gui=bold ctermfg=183 ctermbg=None cterm=bold
hi Comment         guifg=#BFBFBF guibg=None guisp=None gui=None ctermfg=07 ctermbg=None cterm=None
hi Constant        guifg=#C5A3FF guibg=None guisp=None gui=bold ctermfg=183 ctermbg=None cterm=bold
hi Cursor          guifg=None guibg=#F8F8F0 guisp=None gui=None ctermfg=None ctermbg=255 cterm=None
hi CursorLine      guifg=None guibg=#131218 guisp=None gui=None ctermfg=None ctermbg=233 cterm=None
hi Function        guifg=#DCC8FF guibg=None guisp=None gui=None ctermfg=189 ctermbg=None cterm=None
hi Identifier      guifg=#F8F8F2 guibg=None guisp=None gui=None ctermfg=255 ctermbg=None cterm=None
hi Keyword         guifg=#81FFBE guibg=None guisp=None gui=None ctermfg=121 ctermbg=None cterm=None
hi LineNr          guifg=None guibg=None guisp=None gui=None ctermfg=None ctermbg=None cterm=None
hi Normal          guifg=#F8F8F2 guibg=#282634 guisp=None gui=None ctermfg=255 ctermbg=235 cterm=None
hi Number          guifg=#FFF9A3 guibg=None guisp=None gui=None ctermfg=229 ctermbg=None cterm=None
hi StorageClass    guifg=#FFB8D1 guibg=None guisp=None gui=None ctermfg=218 ctermbg=None cterm=None
hi String          guifg=#81EEFF guibg=None guisp=None gui=None ctermfg=123 ctermbg=None cterm=None
hi Type            guifg=#A3F3FF guibg=None guisp=None gui=bold ctermfg=159 ctermbg=None cterm=bold
hi Visual          guifg=None guibg=#8077A8 guisp=None gui=None ctermfg=None ctermbg=103 cterm=None

hi link Conditional Keyword
hi link Repeat Keyword

hi link cType Keyword


