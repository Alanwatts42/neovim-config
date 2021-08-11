
if &compatible
  set nocompatible " Be iMproved
endif

" Required:
" Add the dein installation directory into runtimepath
set runtimepath+='/home/evan/.config/nvim/plugged/dein/repos/github.com/Shougo/dein.vim'

" Required:
call dein#begin('/home/evan/.config/nvim/plugged/dein/repos/github.com/Shougo/dein.vim')

" Let dein manage dein
call dein#add('/home/evan/.config/nvim/plugged/dein/repos/github.com/Shougo/dein.vim/')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Add or remove your plugins here like this:
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')

" Coding/Programming --------
call dein#add('tpope/vim-surround')           " easy '[ ( 'surround' ) ]'
call dein#add('tpope/vim-commentary')         " easy comments
call dein#add('tomtom/tcomment_vim')          " <v><select>gcc comment selected text
call dein#add('somini/vim-autoclose')         " easy [](){}, etc.
call dein#add('FooSoft/vim-argwrap')          " <leader>a to change arg-wrap style
call dein#add('scrooloose/syntastic')         " syntax highlighting
" snippets -----------------
" Plug 'SirVer/ultisnips'             " see 'snippets' dirs
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
" virtualenv -------------------
call dein#add('jmcantrell/vim-virtualenv')        
call dein#add('PieterjanMontens/vim-pipenv')
" Web Development -------------------------
call dein#add('mattn/emmet-vim') " HTML editing tools
call dein#add('prabirshrestha/vim-lsp') 
call dein#add('prabirshrestha/asyncomplete-lsp.vim') 
call dein#add('Yggdroot/indentLine') 
call dein#add('w0rp/ale') 
call dein#add('Chiel92/vim-autoformat') 
call dein#add('scrooloose/nerdtree') 
call dein#add('tpope/vim-eunuch') 
call dein#add('ctrlpvim/ctrlp.vim') 
call dein#add('easymotion/vim-easymotion') 
call dein#add('flazz/vim-colorschemes') 
call dein#add('christophermca/meta5') 
call dein#add('rafi/awesome-vim-colorschemes') 
call dein#add('Lokaltog/powerline') 
call dein#add('vim-airline/vim-airline') 
call dein#add('vim-airline/vim-airline-themes') 
call dein#add('tpope/vim-fugitive') 
call dein#add('tpope/vim-rhubarb') 
call dein#add('junegunn/gv.vim') 
call dein#add('airblade/vim-gitgutter') 
call dein#add('christoomey/vim-conflicted') 
call dein#add('Rykka/riv.vim') 
call dein#add('plasticboy/vim-markdown') 

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" Look & Feel
set termguicolors
set t_co=256			" 256 Colors
colorscheme meta5		" Colorscheme


"-----------------
" General Settings
"-----------------
set title               		                 " Window Title
set noeb vb t_vb=            		             " No Error Bells
set showcmd             		                    " Show cmds being typed
set number              		                    " IDE-Style line numbers
set ruler               		                    " Line numbering
set sc                  		                    " Incomplete commands
set matchtime=2         		                    " Time to blink match {}
"set matchpairs+=<:>     		                    " For ci< or ci>
set showmatch           		                    " Highlight brackets
set wildignore+=*.bak,*.swp,*.swo
set wildignore+=*.a,*.o,*.so,*.pyc,*.class
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.pdf
set wildignore+=*/.git*,*.tar,*.zip
set wildmenu
set wildmode=longest:full,list:full
set list                		                    " displaying listchars
"----------------------------------------
" Set Text Encoding to UTF-8 
set encoding=utf-8
"----------------------------------------
" <Leader> Key Mapped to Comma ','
let g:mapleader=','
"----------------------------------------
" Clipboard Fixes
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>Y "+y
nnoremap <Leader>P "+p
" Coding/Programming --------
call dein#add('tpope/vim-surround')           " easy '[ ( 'surround' ) ]'
call dein#add('tpope/vim-commentary')         " easy comments
call dein#add('tomtom/tcomment_vim')          " <v><select>gcc comment selected text
call dein#add('somini/vim-autoclose')         " easy [](){}, etc.
call dein#add('FooSoft/vim-argwrap')          " <leader>a to change arg-wrap style
call dein#add('scrooloose/syntastic')         " syntax highlighting
" snippets -----------------
" Plug 'SirVer/ultisnips'             " see 'snippets' dirs
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
" virtualenv -------------------

" Paste Mode <F2>
noremap Y y$
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
set clipboard=unnamedplus
" Delete without copying what is being deleted to clipboard
nnoremap <Leader>d "_d
xnoremap <Leader>d "_d
xnoremap <Leader>p "_dP
"----------------------------------------
" Search Options
set incsearch                   " searches as you type
set matchtime=2                 " time to blink match {}
set matchpairs+=<:>             " for ci< or ci>
set showmatch                   " tmpjump to match-bracket
" Find and replace all
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
vnoremap <Leader>rc y:$s/<C-r>"/
"----------------------------------------
" Screen-Splitting
set splitbelow                  " splits go below w/focus
set splitright                  " vsplits go right w/focus
" Easier Navigating Between Screens
map <a-j> <c-w>j
map <a-k> <c-w>k
map <a-l> <c-w>l
map <a-h> <c-w>h
"----------------------------------------
" Ctrl+E = Go to EOL in Insert Mode
inoremap <C-e> <C-o>$
"----------------------------------------
" Misc Lines and Splits
set laststatus=2                " always show statusline
set linebreak                   " don't cut words on wrap
set listchars=tab:>\            " > to highlight <Tab>
set nolist                      " displaying listchars
set ww=<,>,h,l                  " ww=[commands that wrap around EOL]
"----------------------------------------
" Text/Code Folding
"-----------------------------------------
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
set noeb  " Attempt to silence error dings for console vim
set ttyfast  " for faster redraws etc
"----------------------------------------
" Easy indent with >> or << with in visual mode
vnoremap < <gv
vnoremap > >gv
"----------------------------------------
" Highlight last inserted text
nnoremap gV '[V']
"----------------------------------------
" Mouse/Cursor (or lack thereof)
set ru                          " Show cursor position even if inactive
set lazyredraw                  " Makes Vim run a bit faster (in theory)
set mouse=a                     " Limited mouse functionality
"----------------------------------------
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



" pipenv path
let pipenv_venv_path = system('pipenv --venv')
"-------------------------------------------------------------------
"-------------------------------------------------------------------
" remapping F4 to run current file interactively in bpython3
nnoremap <F4> :w<cr>:!tilix -e bpython3 -i % &<cr>

" run Python files with leader p
nnoremap <leader>P :!ipython3 %<cr>
nnoremap <leader>p :!bpython3 %<cr>



" Shell-Scripting
"----------------------------------------
" Make Shell Scripts Executable with <leader>h
nnoremap <leader>h :!sudo chmod +x %<cr>
" Run Shell Scripts with <leader>e
nnoremap <leader>S<cr>:!./%<cr>
"----------------------------------------
" Use Templates for *.sh and *.py files
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


" Easymotion - 'easymotion/vim-easymotion'
map <Leader>s <Plug>(easymotion-prefix)
"----------------------------------------
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
" syntastic
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
"---------------------------------------------------------
" vim-airline
let g:airline_theme='monochrome'  " sets theme for vim-airline
"
"--------------[END OF CONFIG FILE]-------------------------
