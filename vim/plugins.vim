if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/nvim/plugged')
" Markdown preview in browser
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" For Github reviews and writing review comments
Plug 'matthias-margush/critiq.vim'

" self developed plugin for java project dependencies (not ready yet)
Plug '~/nvim/plugged/nvim-java-dependencies'

" example lua plugin - no special use
Plug 'rafcamlet/nvim-whid'

" color scheme
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" color scheme
Plug 'dylanaraps/wal.vim'

" better java syntax highlighting
Plug 'mafflerbach/java-syntax.vim'

" matching pairs {}()[]
Plug 'andymass/vim-matchup'
 
" better dir navigator
Plug 'scrooloose/nerdtree'

" git status symbols in nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" using ripgrep instead of grep
Plug 'mafflerbach/nerdtree-ripgrep-plugin'

" http client
Plug 'diepm/vim-rest-console' 

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" faster grep
Plug 'jremmen/vim-ripgrep'

""" startpage 
Plug 'mhinz/vim-startify'

" aligning everything
Plug 'junegunn/vim-easy-align'

" fuzzy search integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vimwiki/vimwiki'

" better code commenting
Plug 'scrooloose/nerdcommenter'
" Coc vim implements language server features for different languages
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf'

" git integration
Plug 'tpope/vim-fugitive'
" Git status in file per line
Plug 'mhinz/vim-signify'

" fuzzysearch for buffer and mru files 
Plug 'ctrlpvim/ctrlp.vim'

Plug 'AdamWhittingham/vim-copy-filename'

" file preview in quicklist
"Plug 'ronakg/quickr-preview.vim'

" sytax highlighting for protobuf
Plug 'uarun/vim-protobuf'

" swagger previer
Plug 'xavierchow/vim-swagger-preview'

" debugger
Plug 'puremourning/vimspector'
 
" Outline code
Plug 'majutsushi/tagbar'

" smooth scrooling"
Plug 'psliwka/vim-smoothie'
Plug 'camspiers/animate.vim'

" vim tmux integration 
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'


Plug 'tpope/vim-surround'
" async calls 
Plug 'tpope/vim-dispatch'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 

" Arduino build and flash support
Plug 'stevearc/vim-arduino'

" more intuitivfe find and replace in the whole project
Plug 'brooth/far.vim'
" creates doc comments
Plug 'kkoomen/vim-doge'

"Database client 
Plug 'tpope/vim-dadbod'
" icons in nerdtree
Plug 'ryanoasis/vim-devicons'

" Better csv file handling
Plug 'chrisbra/csv.vim'

" Distraction free writing
Plug 'junegunn/goyo.vim'

" lsp support for nvim
Plug 'neovim/nvim-lspconfig'

Plug 'tpope/vim-surround'
call plug#end()

