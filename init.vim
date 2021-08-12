"------------===============================----------
"-------------- Neovim Configuration File -------------
"------------===============================-----------
"---------------------Evan Sherwood--------------------
"-----------------github.com/Alanwatts42---------------
if &compatible
  set nocompatible " Putting the im in vim
endif
"------------------------------------------------------
" Required:
" Add the dein installation directory into runtimepath
set runtimepath+=/home/evan/.cache/dein/repos/github.com/Shougo/dein.vim
"------------------------------------------------------------------------
" Required:
call dein#begin('/home/evan/.config/plugin/')
"---------------------------------------------
" Let dein manage dein
call dein#add('/home/evan/.cache/dein/repos/github.com/Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
"---------------------------------
call dein#add('Shougo/unite.vim')
"---------------------------------
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
"-------------------------------------------
" Add or remove your plugins here like this:
"call dein#add('somedude/someplugin.vim')
"-------------------------------------------
"               Plugins
"-------------------------------------------
" Auto-complete-----------------------------
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neoinclude')
call dein#add('prabirshrestha/asyncomplete.vim')
call dein#add('prabirshrestha/asyncomplete.vim')
call dein#add('prabirshrestha/vim-lsp')
call dein#add('prabirshrestha/asyncomplete-lsp.vim')
" Coding/Programming -------------------------------
call dein#add('tpope/vim-surround')           " easy '[ ( 'surround' ) ]'
call dein#add('tpope/vim-commentary')         " easy comments
call dein#add('tomtom/tcomment_vim')          " <v><select>gcc comment selected text
call dein#add('somini/vim-autoclose')         " easy [](){}, etc.
call dein#add('FooSoft/vim-argwrap')          " <leader>a to change arg-wrap style
call dein#add('scrooloose/syntastic')         " syntax highlighting
" Python Virtual Environments --------------
call dein#add('jmcantrell/vim-virtualenv')
call dein#add('PieterjanMontens/vim-pipenv')
" Web Development --------------------------
call dein#add('mattn/emmet-vim')
call dein#add('prabirshrestha/vim-lsp')
call dein#add('prabirshrestha/asyncomplete-lsp.vim')
call dein#add('Yggdroot/indentLine') 
call dein#add('w0rp/ale')
call dein#add('Chiel92/vim-autoformat')
" Look & Feel---------------------------
call dein#add('flazz/vim-colorschemes')
call dein#add('christophermca/meta5')
call dein#add('rafi/awesome-vim-colorschemes')
call dein#add('Lokaltog/powerline')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" Vim Functionality----------------------------
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-eunuch') call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('easymotion/vim-easymotion') "
" Git Version Control------------------------
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-rhubarb')
call dein#add('junegunn/gv.vim')
call dein#add('airblade/vim-gitgutter')			" diff tool
call dein#add('christoomey/vim-conflicted')		" conflict helper
" Markup/Markdown
call dein#add('Rykka/riv.vim')
call dein#add('plasticboy/vim-markdown')
" -------------------------------------------
"             End of Plugins
" -------------------------------------------
" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" Install any above plugins not yet installed on startup
if dein#check_install()
 call dein#install()
endif
"----------------------
" Colorscheme Settings
"----------------------
set termguicolors
colorscheme meta5
"--------------------
" General Settings
"--------------------
set title               		                " Window Title
set showcmd             		                " Show cmds being typed
set number              		                " IDE-Style line numbers
set ruler               		                " Line numbering
set sc                  		                " Incomplete commands
set list                		                " displaying listchars
set wildignore+=*.bak,*.swp,*.swo
set wildignore+=*.a,*.o,*.so,*.pyc,*.class
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.pdf
set wildignore+=*/.git*,*.tar,*.zip
set wildmenu
set wildmode=longest:full,list:full
"----------------------------------------
" Set Text Encoding to UTF-8 
set encoding=utf-8
"----------------------------------------
" Set <Leader> key to Comma ','
let g:mapleader=','
"----------------------------------------
" Clipboard Fixes
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>Y "+y
nnoremap <Leader>P "+p
"----------------------------------------
noremap Y y$
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set clipboard=unnamedplus
" Delete without copying what is being deleted to clipboard
nnoremap <Leader>d "_d
xnoremap <Leader>d "_d
xnoremap <Leader>p "_dP
"---------------------------------------
" Find/Search Options
set incsearch                   " searches as you type
set matchtime=2                 " time to blink match {}
set matchpairs+=<:>             " for ci< or ci>
set showmatch                   " Highlight matching grouping symbols aka brackets
" Find and replace all
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
vnoremap <Leader>rc y:$s/<C-r>"/
"----------------------------------------
" Screen-Splitting
set splitbelow                  " splits go below w/focus
set splitright                  " vsplits go right w/focus
" Switching between screen-splits
omap <a-j> <c-w>j
omap <a-k> <c-w>k
omap <a-l> <c-w>l
omap <a-h> <c-w>h
"------------------------------------
" Ctrl+E = Go to EOL in Insert Mode
inoremap <C-e> <C-o>$
"------------------------------------
" Misc Lines and Splits
set laststatus=2                " always show statusline
set linebreak                   " don't cut words on wrap
set listchars=tab:>\            " > to highlight <Tab>
set nolist                      " displaying listchars
set ww=<,>,h,l                  " ww=[commands that wrap around EOL]
"-------------------
" Text/Code Folding
"-------------------
" set folding to manual - press <F9> to fold selected text
set foldmethod=manual
set foldopen=all
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
" select some lines and press <space> to fold those lines
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
"----------------------------------------
" Sounds & Other Peripheral Functions
set noeb vb t_vb=	" No Error Bells
set ttyfast		" Faster redraws etc
"-----------------------------------------------
" Easy indent with >> or << with in visual mode
vnoremap < <gv
vnoremap > >gv
"-----------------------------------------------
" Highlight last inserted text
nnoremap gV '[V']
"-----------------------------------------------------------------------
" Mouse/Cursor (or lack thereof)
set ru                          " Show cursor position even if inactive
set lazyredraw                  " Makes Vim run a bit faster (in theory)
set mouse=a                     " Limited mouse functionality
"-----------------------------------------------------------------------
" Saving/Loading
set autoread                    " refresh if changed
set confirm                     " confirm changed files
set noautowrite                 " never autowrite
set nobackup                    " disable backups
set nowritebackup               " no backup while editing
set noswapfile                  " no swap files 
"----------------------------------------
" Text Formatting
set autoindent                  " preserve indentation
set backspace=indent,eol,start  " normal backspace
set expandtab                   " indents <Tab> as spaces
set ignorecase                  " by default ignore case
set nrformats+=alpha            " incr/decr letters C-a/-x
set shiftround                  " round indent of 'sw'
set shiftwidth=0                " =0 uses 'ts' value
set smarttab                    " tab to 0,4,8 etc.
set softtabstop=-1              " =-1 uses 'sw' value
set tabstop=4                   " <Tab> as 4 spaces
set scrolloff=10                " let 10 lines before cursor during scroll
set exrc                        " enable usage of additional vimrc files
set secure                      " .vimrc files cannot execute/create files
"set cursorline                 " shows line under the cursor
"-------------------------------------------------------------------
" Gvim Windows Fix
if has('win32')
    set guioptions-=m   " remove menubar set
    guioptions-=T       " remove toolbar
    set guioptions-=r   " remove right scrollbar
endif
"------------------------------------
" Coding and IDE-style functionality
"------------------------------------
" Pipenv path
let pipenv_venv_path = system('pipenv --venv')
"------------------------------------------------------------
" remapping F4 to run current file interactively in bpython3
nnoremap <F4> :w<cr>:!tilix -e bpython3 -i % &<cr>
"------------------------------------------------------------
" run Python files with leader p
nnoremap <leader>P :!ipython3 %<cr>
nnoremap <leader>p :!bpython3 %<cr>
"------------------------------------
" Unix Shell aka Bash Scripting
"---------------------------------------------------------
" Map command to make current file executable to <leader>h
nnoremap <leader>h :w<cr>:!sudo chmod +x %<cr>
" Execute Shell Scripts with <leader>e
nnoremap <leader>e :w<cr>:!./%<cr>
"-----------
" Templates
"-----------
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r /home/evan/.config/nvim/templates/template.sh
    autocmd BufNewFile *.py 0r /home/evan/.config/nvim/templates/template.py
    autocmd BufNewFile *.js 0r /home/evan/.config/nvim/templates/template.js
    autocmd BufNewFile *.html 0r /home/evan/.config/nvim/templates/template.html
    autocmd BufNewFile *.css 0r /home/evan/.config/nvim/templates/template.css
    autocmd BufNewFile *.md 0r /home/evan/.config/nvim/templates/template.md
    autocmd BufNewFile *.markdown 0r /home/evan/.config/nvim/templates/template.md
    " autocmd BufNewFile *.travis.yml 0r /home/evan/.config/nvim/templates/template.travis.yml
  augroup END
endif
"------------------------------------------
" Plugin Settings
"------------------------------------------
" Easymotion - 'easymotion/vim-easymotion'
map <Leader>s <Plug>(easymotion-prefix)
"------------------------------------------
" Emmet - 'mattn/emmet-vim' - HTML
let g:user_emmet_expandabbr_key = '<C-a>,' " html expander bind to: <ctrl+a>
"----------------------------------------
" Argwrap - 'FooSoft/vim-argwrap'
nnoremap <silent> <leader>a :ArgWrap<CR>  
"----------------------------------------
" NERDTree - 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']  " ignore files 
let NERDTreeWinSize=40   " size of NERDTree window
let NERDTreeShowHidden=1
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>
"----------------------------------------
" Riv-Vim - 'Rykka/riv.vim'
let g:riv_disable_folding=1
"----------------------------------------
" Syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'python3']
"-----------------------------------------------------
" Deoplete
let g:deoplete#enable_at_startup = 1  " necessary for deoplete to run
"---------------------------------------------------------------------
" Vim-airline
let g:airline_theme='monochrome'  " sets theme for vim-airline
"--------------------------------------------------------------

