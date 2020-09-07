if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/nvim/plugged')
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'greymd/oscyank.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'dylanaraps/wal.vim'
Plug 'mafflerbach/java-syntax.vim'
" matching pairs {}()[]
Plug 'andymass/vim-matchup'
" better dir navigator
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mafflerbach/nerdtree-ripgrep-plugin'
" http client
"Plug 'aquach/vim-http-client'
Plug 'diepm/vim-rest-console' 
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

" better code commenting
Plug 'scrooloose/nerdcommenter'

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'antoinemadec/coc-fzf'
" git integration
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'mhinz/vim-signify'


" fuzzysearch for buffer and mru files 
Plug 'ctrlpvim/ctrlp.vim'

Plug 'AdamWhittingham/vim-copy-filename'

Plug 'mikelue/vim-maven-plugin'
" file preview in quicklist
Plug 'ronakg/quickr-preview.vim'

" sytax files
Plug 'uarun/vim-protobuf'

" swagger previer
Plug 'xavierchow/vim-swagger-preview'

" Java debugger
Plug 'puremourning/vimspector'
" Outline code
Plug 'majutsushi/tagbar'
" smooth scrooling"
Plug 'psliwka/vim-smoothie'
" vim tmux integration 
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

Plug 'vimwiki/vimwiki'

Plug 'tpope/vim-surround'
"async calls 
Plug 'tpope/vim-dispatch'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'dstein64/vim-startuptime'

Plug 'camspiers/animate.vim'

Plug 'stevearc/vim-arduino'
"Plug 'junkblocker/patchreview-vim'
"Plug 'codegram/vim-codereview'
Plug 'brooth/far.vim'
" creates doc comments
Plug 'kkoomen/vim-doge'

"Database client 
Plug 'tpope/vim-dadbod'
" Needed for formatter
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'
" icons 
Plug 'ryanoasis/vim-devicons'
call plug#end()

call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/maren/nvim/libs/google-java-format-1.7-all-deps.jar"


