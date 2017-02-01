call pathogen#infect()
call pathogen#helptags()

set nocompatible
set guioptions-=M
filetype off

set rtp+=$GOROOT/misc/vim
set omnifunc=syntaxcomplete#Complete

set mouse=a
set visualbell
set hidden
set nowrap
set backspace=indent,eol,start
set autoindent
set wildmode=longest,list,full
set wildmenu
set number
set showmatch
set smartcase
set smarttab
set hlsearch
set incsearch
set nobackup
set noswapfile
set smarttab
set ruler
set autoread
set cursorline

"   syntax on
"   colorscheme morning

syntax enable
colorscheme molokai
let g:rehash256 = 1

if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.tmp/*,*/.sass-cache/*,*/node_modules/*,*.keep,*.DS_Store,*/.git/

let g:ctrlp_show_hidden = 1

let g:go_fmt_fail_silently = 1
let g:gofmt_command = "goimports"
let g:go_fmt_autosave = 0
let g:go_bin_path = expand("~/golang/bin")
let g:go_highlight_functions = 0
let g:go_highlight_methods = 0
let g:go_highlight_structs = 0
let g:go_highlight_operators = 0
let g:go_highlight_build_constraints = 0
let g:go_auto_type_info = 0
let g:go_def_mapping_enabled = 1

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.go set filetype=go
autocmd BufWritePre *.go GoImports
filetype plugin indent on

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]


abbr iferr if err != nil {<CR>
abbr consts const (<CR>


"  Tagbar configuration
nmap <F8> :TagbarToggle<CR>

"  NerdTree configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


