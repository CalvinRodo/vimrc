set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"Vundle bundles
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-sensible'
Bundle 'pangloss/vim-javascript'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

"Vim keymaps
map <C-n> :NERDTreeToggle<CR>
map <C-p> :ctrlp.vim<CR>

let g:SuperTabDefaultCompletionType = "context"
"Turn on solarized coloring
syntax enable
set background=dark
colorscheme solarized

"Fix colors for putty shell
if &term =~ "xterm"
    "256 colo --
    let &t_Co=256
    " restore screen after quitting
    set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
    if has("terminfo")
        let &t_Sf="\ESC[3%p1%dm"
        let &t_Sb="\ESC[4%p1%dm"
    else
        let &t_Sf="\ESC[3%dm"
        let &t_Sb="\ESC[4%dm"
    endif
endif
