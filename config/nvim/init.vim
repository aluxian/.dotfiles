" vim-plug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}

  "Plug 'vim-airline/vim-airline'
  Plug 'itchyny/lightline.vim'
  Plug 'joshdick/onedark.vim'
  "Plug 'jeffkreeftmeijer/vim-dim'
  "Plug 'https://gitlab.com/protesilaos/tempus-themes-vim.git'
  Plug 'kaicataldo/material.vim'

  Plug 'airblade/vim-gitgutter'
  Plug 'int3/vim-extradite'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-git'

  Plug 'mhinz/vim-startify'

  Plug 'ryanoasis/vim-devicons'

  Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
  Plug 'deoplete-plugins/deoplete-jedi'

  Plug 'sbdchd/neoformat'

  Plug 'neomake/neomake'

  Plug 'aklt/plantuml-syntax'

  Plug 'tyru/open-browser.vim'
  Plug 'weirongxu/plantuml-previewer.vim'
call plug#end()

" onedark
let g:onedark_terminal_italics = 1

" neomake
call neomake#configure#automake('nrwi', 500)

" lightline
let g:lightline = { 'colorscheme': 'material_vim' }

" python
let g:python3_host_prog = '/Users/alexandrurosianu/.venv/neovim-env/bin/python3'

" color scheme
let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1
colorscheme material

" vim ui
set cursorline      " highlight current line
set noshowmode      " hide mode at the bottom (replaced by statusline)
set termguicolors

" plantuml
let g:plantuml_set_makeprg = 0
au FileType plantuml let g:plantuml_previewer#plantuml_jar_path = get(matchlist(system('cat `which plantuml` | grep plantuml.jar'), '\v.*\s[''"]?(\S+plantuml\.jar).*'), 1, 0)

" vim per-project config
set exrc
set secure

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" ALE
let g:ale_linters_explicit = 1
let b:ale_linters = ['eslint']
let g:ale_lint_delay = 100 " ms

" deoplete
let g:deoplete#enable_at_startup = 1

" neoformat
let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_php = ['phpcsfixer']
let g:neoformat_enabled_javascript = ['prettier']
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" neomake
let g:neomake_python_enabled_makers = ['pylint']


autocmd FileType pu,uml,puml,plantuml setlocal shiftwidth=4 tabstop=4 noexpandtab



" Use both absolute and relative line numbers
set number relativenumber

" Use the system clipboard
set clipboard=unnamed

" Use a color column on the 80-character mark
set colorcolumn=100

" Use , as the leader key
let mapleader=","

" Use ,, to switch between buffers
nnoremap <leader><leader> :b#<CR>

" Press <tab>, get two spaces
set expandtab shiftwidth=2

" Show `▸▸` for tabs: 	, `·` for tailing whitespace: 
set list listchars=tab:▸▸,trail:·

" Enable mouse mode
set mouse=a
