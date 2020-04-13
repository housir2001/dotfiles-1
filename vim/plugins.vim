if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/nvim/plugged')
Plug 'greymd/oscyank.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'dylanaraps/wal.vim'

" matching pairs {}()[]
Plug 'andymass/vim-matchup'

" better dir navigator
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mafflerbach/nerdtree-ripgrep-plugin'
"
" icons 
Plug 'ryanoasis/vim-devicons'

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" faster grep
Plug 'jremmen/vim-ripgrep'

" startpage 
Plug 'mhinz/vim-startify'

" aligning everything
Plug 'junegunn/vim-easy-align'

" fuzzy search integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'zackhsi/fzf-tags'

" better code commenting
Plug 'scrooloose/nerdcommenter'

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" git integration
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'mhinz/vim-signify'


" fuzzysearch for buffer and mru files 
Plug 'ctrlpvim/ctrlp.vim'

Plug 'AdamWhittingham/vim-copy-filename'

" translating tool
Plug 'ronakg/quickr-preview.vim'


Plug 'mikelue/vim-maven-plugin'

" file preview in quicklist
Plug 'ronakg/quickr-preview.vim'

" sytax files
Plug 'uarun/vim-protobuf'

" swagger previer
Plug 'xavierchow/vim-swagger-preview'

" Java debugger
"Plug 'https://gitlab.com/Dica-Developer/vim-jdb.git'
Plug 'puremourning/vimspector'
" Plug 'liuchengxu/vista.vim'
" smooth scrooling"
Plug 'psliwka/vim-smoothie'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

Plug 'vimwiki/vimwiki'

Plug 'tpope/vim-surround'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'dstein64/vim-startuptime'

Plug 'camspiers/animate.vim'

call plug#end()

