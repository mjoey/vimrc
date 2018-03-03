"Vundle Configuration **********************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

"map leader key
let mapleader = ","

"file with login
"execute 'source ~/.vim/login.vim'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"[
Plugin 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \   'absolutepath': '%'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }
set laststatus=2
"]

"[
Plugin 'flazz/vim-colorschemes'
"]


"[
Plugin 'wincent/Command-T'
map <F12> <Esc>:CommandT<CR>
let g:CommandTMaxFiles=100000
let g:CommandTFileScanner='find'
let g:CommandTAlwaysShowDotFile=1
"]

"[
Plugin 'maksimr/vim-translator'
let  g:goog_user_conf = {'langpair': 'fr|en','cmd': 'node','v_key': 'T'}
"]

"[
Plugin 'vim-scripts/PHP-correct-Indenting'
"]

"[
Plugin 'vim-scripts/Align'
"]

"[
Plugin 'tpope/vim-fugitive'
"]

"[
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
"]

"[
Plugin 'Raimondi/delimitMate'
"]

"[
Plugin 'docunext/closetag.vim'
"]

"[
Plugin 'easymotion/vim-easymotion'
"]
"
"[
Plugin 'scrooloose/nerdtree'
map <F2> <Esc>:NERDTreeToggle<CR>
"show hide files
let NERDTreeShowHidden=1
"open NERDTree and focus on main window on vim starts up 
autocmd vimenter * NERDTree | wincmd w
"]

"[
Plugin 'Xuyuanp/nerdtree-git-plugin'
"]
Plugin 'vim-scripts/vim-misc'
Plugin 'vim-scripts/easytags.vim'
"[
"VimRepress Fork
Plugin 'danielmiessler/VimBlog'
"let VIMPRESS = [{'username':'',
"                \'password':'',
"                \'blog_url':''
"                \}]
"]

"[
"Plugin 'vim-scripts/AutoComplPop'
Plugin 'Shougo/neocomplete'
"]

"[
Plugin 'airblade/vim-gitgutter'
"]

"[
Plugin 'ivalkeen/nerdtree-execute'
"]

"[
Plugin 'vim-scripts/TwitVim'
let twitvim_enable_python = 1
"let twitvim_login = "user:password"
nnoremap <F8> :FriendsTwitter<cr>
"]

"[
Plugin 'mjoey/vim-magento'
let g:vimMagentoAuthor = "Michael Joseph <contact@michael-joseph.me>"
let g:vimMagentoCopyright = "Copyright 2015 Michael Joseph http://michael-joseph.me"
let g:vimMagentoLicense = "No License"
let g:vimMagentoSignature = 1
"]

"[
Plugin 'majutsushi/tagbar'
"]

"[
Plugin 'vim-php/tagbar-phpctags.vim'
map <F3> <Esc>:TagbarToggle<CR>
"]

"[
Plugin 'mattn/emmet-vim'
"]

"[
Plugin 'tpope/vim-surround'
"]

"[
Plugin 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/.vim/vimwiki'}]
"]
"
"[
Plugin 'SirVer/ultisnips'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
map <C-c> :call pdv#DocumentWithSnip()<CR>
"]

"[
"Plugin 'joonty/vim-phpqa'
"]
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"Vundle Configuration [END] **********************************************************************

"Vim Configuration **********************************************************************
set dir=~/.vimswap//
set mouse=a
syntax enable
set t_Co=256 "256 colors
set wildmenu
set nu
colorscheme kolor
set cursorline
set tags=./tags,tags
set hlsearch
"browse tabs
map <C-A-Right> :tabnext<CR>
map <C-A-Left> :tabprevious<CR>



"indent config
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" set backspace
set backspace=indent,eol,start

"replace all tab by 4 spaces
map <F10> :%s/\t/    /g<CR>
imap <C-Space> <C-x><C-o>
"indent full page
map <F5> gg=G
"indent selection
vmap <F5> =
"autoresize window on focus
autocmd WinEnter * wincmd _

"display hide character
set list
set listchars=tab:▸\ ,eol:¬

"Vim Configuration [END] **********************************************************************
