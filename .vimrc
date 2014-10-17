" Pathogen load
filetype off
"
call pathogen#infect()
call pathogen#helptags()
"
filetype plugin indent on
syntax on

autocmd! bufwritepost .vimrc source %

set pastetoggle=<F2>
set clipboard=unnamed
set bs=2
set mouse=a
vnoremap < <gv
vnoremap > >gv
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" python
let mapleader = ","
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_virtualenv = 1
nmap <leader>a <Esc>:Ack!
let g:pymode_rope_completion_bind = '<C-\>'
let g:pymode_rope_goto_definition_bind = '<C-c>g'
"endpython

colorscheme evening
set nocp
set backspace=indent,eol,start
set foldmethod=syntax

" OmniCppComplete
" let OmniCpp_NamespaceSearch = 1
" let OmniCpp_GlobalScopeSearch = 1
let OmiCpp_ShowScopeInAbbr = 0
let OmniCpp_ShowAccess = 0
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_SelectFirstItem = 1
" let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
" let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" " automatically open and close the popup menu / preview window
autocmd CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
autocmd FileType c set omnifunc=omni#cpp#complete#Main

"set cscopetag
nmap <C-@><C-@> :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <F7> :cs find s <C-R>=expand("<cword>")<CR><CR>

" Open and close all the three plugins on the same time
nmap <F8>   :TagbarToggle<CR>

" Open and close the srcexpl.vim separately
nmap <F9>   :NERDTreeToggle<CR>

if filereadable($PWD."/cscope.out")
	"echon "exists at ".$PWD
	exe "cscope" "add" $PWD."/cscope.out" $PWD
endif
nmap <C-]><C-]> :tnext<CR>

