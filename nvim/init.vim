:set number
" :set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a 
:set wildmenu
:set wildmode=longest:full
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
:set nolist
:set modifiable
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" Plug 'nvim-lua/completion-nvim'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'gcmt/wildfire.vim'
"Plug 'luk400/vim-jukit'
Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'

"Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'github/copilot.vim'
Plug 'https://github.com/tpope/vim-fugitive'
"Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
Plug 'fei6409/log-highlight.nvim'
Plug 'tmux-plugins/vim-tmux'
Plug 'williamboman/mason.nvim'
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jpalardy/vim-slime'
Plug 'hanschen/vim-ipython-cell'
Plug 'preservim/vimux'
Plug 'itspriddle/vim-shellcheck'
Plug 'nvim-telescope/telescope.nvim' " optional
Plug 'cuducos/yaml.nvim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sindrets/diffview.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ray-x/guihua.lua'  "lua GUI lib
Plug 'ray-x/forgit.nvim'
Plug 'marioortizmanero/adoc-pdf-live.nvim'
Plug 'voldikss/vim-browser-search'
Plug 'nanotee/sqls.nvim'
" Plug 'ekickx/clipboard-image.nvim'
" Plug 'samodostal/image.nvim'
Plug 'm00qek/baleia.nvim', { 'tag': 'v1.3.0' }
Plug 'chrisbra/csv.vim'
" main one
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**

Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim' 
Plug 'puremourning/vimspector'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mfussenegger/nvim-dap'
Plug 'habamax/vim-asciidoctor'
set encoding=UTF-8

call plug#end()

"nnoremap <C-d> :NERDTreeFocus<CR>
nnoremap <C-k> :NERDTreeFind<CR>
nnoremap <C-c> :NERDTreeClose<CR>
"nnoremap <C-f> :Ag<CR>
nnoremap <C-r> :NERDTreeRefreshRoot<CR>
 nnoremap <C-g> :NERDTreeToggle<CR>
 " nnoremap <C-l> :ls<CR>
 nnoremap <C-p> :bprev<CR>
 nnoremap <C-h> :bnext<CR>
 nnoremap <C-g> :FZF<CR>
 nnoremap <C-t> :terminal<CR>
nnoremap <F5> :CocCommand prettier.formatFile<CR>
nnoremap <C-P> :CocCommand swagger.render<CR>
nnoremap <F6> :%!jq .<CR>
nnoremap <F7> :MarkdownPreview<CR>
nnoremap <F8> :%!jq -c .<CR>


" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

nmap <F8> :TagbarToggle<CR>
:set clipboard+=unnamedplus
:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-json coc-java coc-lua coc-css coc-tsserver coc-yaml coc-git coc-sql coc-sh coc-pyright coc-langd  coc-snippets coc-swagger coc-python
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Enable coc.nvim
let g:coc_global_extensions = ['coc-pyright']

" Key mappings (customize as needed)
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Use K to show documentation in preview window
nnoremap <silent> H :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('H', 'in')
  endif
endfunction

nmap <silent> <Leader>s <Plug>SearchNormal
vmap <silent> <Leader>s <Plug>SearchVisual
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
let NERDTreeShowHidden=1

