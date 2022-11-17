
call plug#begin()
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'clangd/coc-clangd'
    Plug 'iamcco/markdown-preview.nvim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'junegunn/fzf'
call plug#end()

set number relativenumber
set title
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent

set incsearch ignorecase smartcase hlsearch
" NERDTree remaps
nnoremap <C-n> :NERDTreeToggle<CR>

" Fuzzy finder remap
nnoremap <C-p> :FZF<CR>
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Toggle numbering mode when in Insert
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" Limelight settings
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'






