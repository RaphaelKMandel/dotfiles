"PLUGINS"
    call plug#begin()
        Plug 'preservim/NERDTree'
        Plug 'machakann/vim-highlightedyank'
        Plug 'tpope/vim-commentary'
        Plug 'terryma/vim-multiple-cursors'
        Plug 'liuchengxu/vim-which-key'
    call plug#end()

"SETTINGS"
	set clipboard+=unnamed
	set number 
	set mouse=a
	set ruler
	set ignorecase
	set showmode
	" set paste

	set tabstop=4
	set shiftwidth=4
	set softtabstop=4
	set expandtab
	set autoindent
	set smartindent
	set nowrap

	set incsearch
    set ignorecase
    set smartcase
    set nohlsearch
    set cursorline
    set signcolumn=yes
	set colorcolumn=120 "EOL
    set cmdheight=1
    set scrolloff=10
    set sidescrolloff=10
    set completeopt=menuone

    set hidden
    set noerrorbells
    set noswapfile
    set undofile
    set backspace=indent,eol,start
    set splitright
    set splitbelow
    set noautochdir
    set modifiable
    set encoding=utf-8
    set numberwidth=4

    set termguicolors


"PLUGIN CONFIGURATION"
	let g:highlightedyank_highlight_duration=200
	nnoremap <silent> <space> :silent WhichKey '<space>'<CR>


    "WhichKey Config"
    set notimeout
    "set timeoutlen = 50000"
    let g:WhichKey_DefaultDelay=1000
    let g:WhichKey_ShowVimActions="true"
    let g:WhichKey_ShowTypedSequence="false"
    let g:WhichKey_SortOrder="by_key_prefix_first"
    let g:WhichKey_CommandColor="green"
    let g:WhichKey_FontSize=16


    "Quickscope Config"
    " let g:qs_highlight_on_keys = ["f", "F", "t", "T"]

    "Easy Motion"
    "map s <Plug>(easymotion-s)
    "map s <Plug>(easymotion-w)
    "map S <Plug>(easymotion-b)


"CURSOR CHANGE
    set ttimeout
    set ttimeoutlen=1
    set ttyfast

    if has("autocmd")
        au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
        au InsertEnter,InsertChange *
                    \ if v:insertmode == 'i' |
                    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
                    \ elseif v:insertmode == 'r' |
                    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
                    \ endif
        au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
    endif


"NORMAL MODE"
    "Remove arrow keys"
    "nmap <up> <Nop>
    "nmap <down> <Nop>
    "nmap <left> <Nop>
    "nmap <right> <Nop>

    "Highlight search and auto disable"
    nnoremap / :set hls<CR>/
    nnoremap <esc><esc> <esc>:set nohls<CR>

    "Window Movement"
    nnoremap \\ <C-w>s
    nnoremap \| <C-w>v
    nnoremap <C-l> <C-w>l
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k

    "Capital Y
    nnoremap Y y$

    "Around File"
    nnoremap yaf mzggVGy`zzz
    nnoremap daf ggVGd
    nnoremap caf ggVGc
    nnoremap vaf ggVG

    "Easier EOL"
    map - $

    "Remapping Control-R to capital U"
    nnoremap U <C-r>

    "Hold cursor location when joining
    nnoremap J mzJ`z

    "Search results in center of screen"
    nnoremap n nzz
    nnoremap N Nzz

    "scrolling in center of screen"
    nnoremap <C-d> <C-d>zz
    nnoremap <C-u> <C-u>zz

    "Macro shortcut
    nmap Q @q

    "Buffer Navigation"
    nmap ]b :bnext<CR>
    nmap [b :bprev<CR>


"VISUAL MODE"
    "Up/Down"
    vmap K :m-2<CR>gv=gv
    vmap J :m'>+1<CR>gv=gv

    "Left Right"
    vnoremap < <gv
    vnoremap > >gv



"LEADER"
    let mapleader = " "

    "NORMAL MODE"
        "Options"
        nnoremap <leader>ua :set norelativenumber<CR>
        nnoremap <leader>un :set relativenumber<CR>

        "Plugins"
        nnoremap <leader>e :NERDTreeToggle<CR>

        "Basic Actions"
        nnoremap <leader>p "0p
        nnoremap <leader>d "_d
        nnoremap <leader>c "_c
        nnoremap <leader>D dt)
        nnoremap <leader>C ct)
        nnoremap <leader>y _y$

        "Inserting blank lines and exiting insert mode"
        nnoremap <leader>o o<esc>
        nnoremap <leader>O O<esc>


"VIM"
    "Sourcing"
    map <leader>s :source ~/.vimrc<CR>


"COLORSCHEME
	" GREY = #CCCCCC
	" DARKGREY = #444444
	" YELLOW = #cccc00
	" ORANGE = #F67126
	" BLUE = #2ACCF5
	" DARKBLUE = #10003a
	" GREEN = #A6E22E
	" RED = #FF0000
	" PURPLE = #ccaaFF
	" BLACK = #000000
	" LIGHTBLACK = #222222

    colorscheme default

    highlight Normal guifg=#CCCCCC guibg=#10003a
    highlight NormalNC guifg=#CCCCCC guibg=#10003a

    highlight TabLine guifg=#444444 guibg=#000000
    highlight TabLineSel guifg=#CCCCCC guibg=#10003a
    highlight MatchParen guifg=#2ACCF5 gui=underline

    highlight CursorLine guibg=#444444 gui=NONE cterm=NONE
    highlight CursorLineNr guifg=#cccc00 gui=NONE cterm=NONE
    highlight LineNr guifg=#CCCCCC
    highlight WinSeparator  guifg=#2accf5
    highlight ColorColumn  guibg=#cccccc  "Divider at 120 chars

	highlight Pmenu guibg=#444444

    highlight Visual guibg=#444444 
	highlight HighlightedyankRegion guifg=black guibg=#CCCC00
 
    highlight operator guifg=#F67126
    highlight Special guifg=#F67126"
    highlight PreProc guifg=#F67126"
    highlight comment guifg=#ccaaff
    highlight identifier guifg=#F67126

    "LITERALS
    highlight Constant guifg=#cccc00
    highlight Character guifg=#cccc00
    highlight String guifg=#cccc00
    highlight Number guifg=#cccc00
    highlight Float guifg=#cccc00
    highlight Boolean guifg=#cccc00

    "KEYWORDS
    highlight Keyword guifg=#2accf5
    highlight Include guifg=#2accf5 "Import"
    highlight Typedef guifg=#2accf5 "Class"
    highlight Conditional guifg=#2accf5 "If"
    highlight Define guifg=#2accf5 "Define"
    highlight Repeat guifg=#2accf5 "For/while"
    highlight Exception guifg=#2accf5 "Try/Except"
    highlight Statement guifg=#2accf5  "General statement words"

    "FUNCTIONS
    highlight Type guifg=#a6e22e
    highlight Function guifg=#a6e22e


    "QUICKSCOPE SETTINGS"
    highlight QuickScopePrimary gui=bold,underline cterm=bold,underline
    highlight QuickScopeSecondary gui=underline cterm=underline
