" Basic {
    set nocompatible                   " vi Im
    filetype off
" }

" Vim UI {
    syntax on        " Syntax highlighting
    set cursorline   " Highlight current line 
    set number       " Line numbers on
    set foldenable   " Auto fold code
    set mouse=a      " Enable mouse support
    set showmatch    " Showing matching brackets/parenthesis
    set hlsearch     " Highlight search terms
    set backspace=indent,eol,start
" }

" Formatting {
    set wrap                     " wrap long lines
    set autoindent                 " Indent at the same level of the previous line
    set shiftwidth=4               " Use indents of 4 spaces
    set expandtab                  " Tabs are spaces, not tabs
    set tabstop=4                  " An indentation every four columns
    set softtabstop=4              " Let backspace delete indent
    set splitright                 " Puts new vsplit windows to the right of the current
    set splitbelow                 " Puts new split windows to the bottom of the 
" }

" Key mappings {
    nmap <C-h> <C-w>h<C-w>_<CR>
    nmap <C-j> <C-w>j<C-w>_<CR>
    nmap <C-k> <C-w>k<C-w>_<CR>
    nmap <C-l> <C-w>l<C-w>_<CR>
    nmap <C-x> :q<CR>
    nmap <C-b> :w<CR>
    " nmap <C-F2> :wq<CR>
    " nmap <Shift-Alt-q> :q!<CR>
    " nmap <Shift-Alt-w> :wq<CR>
" }

" Plugins {
    set background=dark
    " git clone ~/.vim/bundle 
    " Setup Bundle Support {
        " The next three lines ensure that the ~/.vim/bundles/ system works
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
    " }
    " git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    Plugin 'VundleVim/Vundle.vim'

    " Plugin UI {
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
        Plugin 'flazz/vim-colorschemes'
        Plugin 'scrooloose/nerdtree'
        Plugin 'easymotion/vim-easymotion'
    " }

    " Code {
    "    Plugin 'Valloric/YouCompleteMe'
        Plugin 'SirVer/ultisnips'
        Plugin 'honza/vim-snippets'
        Plugin 'majutsushi/tagbar'
        Plugin 'jiangmiao/auto-pairs'
    " }

    " end {
        call vundle#end()
        filetype plugin indent on
    " }

" }

" Plugins Settings {
    " UI {
        colorscheme Monokai
        set laststatus=2
        let g:airline#extensions#tabline#enabled = 1
        " let g:airline_left_sep = '›'
        " let g:airline_right_sep='‹'
        let g:airline_powerline_fonts=1
        map <C-s> :w<CR>
    " }

    " EasyMotion {
        let g:EasyMotion_do_mapping = 0 " disable default mappings

        nmap f <Plug>(easymotion-overwin-f)
        nmap s <Plug>(easymotion-overwin-f2)

        " Turn on case insensitive feature
        let g:EasyMotion_smartcase = 1 
        " JK motions
        map <Leader>j <Plug>(easymotion-j)
        map <Leader>k <Plug>(easymotion-k)

        let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
    " }

    " Tagbar {
        nmap <C-d> :TagbarToggle<CR>
        nmap <C-n> :NERDTreeToggle<CR>
    " }

    " YouCompleteMe {
        " enable completion from tags

        " let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
        " let g:ycm_confirm_extra_conf = 0
        " let g:ycm_min_num_of_chars_for_completion = 2
        " let g:ycm_complete_in_strings = 1
        " let g:ycm_key_invoke_completion = '<C-e>'
        " set pumheight=10
        " " remap utisnips for compatibility for ycm
        " let g:UltiSnipsExpandTrigger = '<C-j>'
        " let g:UltiSnipsJumpForwardTrigger = '<C-j>'
        " let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
    " }
" }

