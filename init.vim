"plugin_section
call plug#begin()
"ui related
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentline'
Plug 'honza/vim-snippets'

"autocomplition related
Plug 'Shougo/deoplete.nvim',{'do':':UpadateRemotePlugins'}
Plug 'zchee/deoplete-jedi'

"other
Plug 'neoclide/coc.nvim' , {'branch' : 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'

"themes
Plug 'morhetz/gruvbox'
call plug#end()



"set_config

set shell=/bin/bash
set number		        "show line numbers 
set expandtab		    "insert spaces when tab is pressed
set tabstop=4		    "numbers of spaces on tab
set mouse =a		    "mouse unable
set background =dark    "dark theme mode
set relativenumber      "set relative numbers
set autoindent          "take indent for new line 
set smartindent         "" enable smart indentation
set autoread            ""reload file if changed
set cursorline          ""highlight cursorline  


"plugin_config

"theme
colorscheme gruvbox

"end


"deoplete

let g:deoplete#enable_at_startup = 1


" Airline
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'


"end




"fixes-

"fix for use tab for autocomplition
inoremap <expr><tab> pumvisible() ? "\<c-n>"  : "\<tab>"
