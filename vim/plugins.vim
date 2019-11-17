if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/nvim/plugged')

Plug 'junegunn/rainbow_parentheses.vim'

"themes
Plug 'arcticicestudio/nord-vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'dylanaraps/wal.vim'
Plug 'KabbAmine/vCoolor.vim'

" matching pairs {}()[]
Plug 'andymass/vim-matchup'

" better dir navigator
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'francoiscabrol/ranger.vim'

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
Plug 'airblade/vim-gitgutter'

Plug 'vimwiki/vimwiki'

" fuzzysearch for buffer and mru files 
Plug 'ctrlpvim/ctrlp.vim'

Plug 'AdamWhittingham/vim-copy-filename'

" translating tool
Plug 'echuraev/translate-shell.vim'
Plug 'ronakg/quickr-preview.vim'


Plug 'mikelue/vim-maven-plugin'

" file preview in quicklist
Plug 'ronakg/quickr-preview.vim'

"for formating java code
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'

" Java debugger 
" Plug 'https://gitlab.com/Dica-Developer/vim-jdb'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'idanarye/vim-vebugger'

" sytax files
Plug 'uarun/vim-protobuf'

" swagger previer
Plug 'xavierchow/vim-swagger-preview'

" Java debugger
Plug 'https://gitlab.com/Dica-Developer/vim-jdb.git'
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'idanarye/vim-vebugger'


" Drawing tool
Plug 'gyim/vim-boxdraw'

Plug 'paulkass/jira-vim'

Plug 'kkoomen/vim-doge'

call plug#end()


