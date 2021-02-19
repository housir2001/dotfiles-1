if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/nvim/plugged')

" color scheme
Plug 'dylanaraps/wal.vim'

" better dir navigator
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" better dir navigator
Plug 'scrooloose/nerdtree'

" git status symbols in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" icons in nerdtree

Plug 'ryanoasis/vim-devicons'

" http client
Plug 'diepm/vim-rest-console' 

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" faster grep
Plug 'jremmen/vim-ripgrep'

" aligning everything
Plug 'junegunn/vim-easy-align'

" better code commenting
Plug 'scrooloose/nerdcommenter'

" git integration
Plug 'tpope/vim-fugitive'
" Git status in file per line
Plug 'mhinz/vim-signify'

" Outline code
Plug 'majutsushi/tagbar'

" smooth scrooling"
Plug 'psliwka/vim-smoothie'
Plug 'camspiers/animate.vim'

" vim tmux integration 
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" debugger
Plug 'puremourning/vimspector'

" async calls 
Plug 'tpope/vim-dispatch'

" more intuitivfe find and replace in the whole project
" Plug 'brooth/far.vim'

"Database client 
Plug 'tpope/vim-dadbod'

" better java syntax highlighting
Plug 'mafflerbach/java-syntax.vim'

Plug 'tfnico/vim-gradle'

" http client
Plug 'diepm/vim-rest-console' 

Plug 'vimwiki/vimwiki'

" fuzzy search integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Markdown preview in browser
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Coc vim implements language server features for different languages
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf'

Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

