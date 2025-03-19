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
	set paste

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


"INSERT MODE"

	"Remove arrow keys"
	imap <up> <nop>
	imap <down> <nop>
	imap <left> <nop>
	imap <right> <nop>


"NORMAL MODE"

	"Shortcut for Macros"
	nnoremap Q @q 

	"Remove arrow keys"
	nmap <up> <nop>
	nmap <down> <nop>
	nmap <left> <nop>
	nmap <right> <nop>

	"Split Naviation
	nmap <C-l> <C-w>l
	nmap <C-h> <C-w>h
	nmap <C-j> <C-w>j
	nmap <C-k> <C-w>k

    nmap <C-down> <C-w>+
    nmap <C-up> <C-w>-
    nmap <C-left> <C-w><
    nmap <C-right> <C-w>>


	"Remapping Control-R to capital U"
	nnoremap U <C-r>

	"Search results in center of screen"
	nnoremap n nzz
	nnoremap N Nzz

	"Keep cursor in place when applying J
	nnoremap J mzJ`z

	"Scrolling keep screen centered
	nnoremap <C-d> <C-d>zz
	nnoremap <C-u> <C-u>zz

	"Inserting blank lines
	nnoremap <C-o> o<esc>
	nnoremap <A-o> O<esc>  "Not working

	"Backspace clears a line
	nnoremap <BS> cc<esc>

	"Highlight all"
	nmap ga ggVG


"VISUAL MODE"
	"Hold selection while indenting
	vnoremap < <gv
	vnoremap > >gv

	"Move block of text up/down
	vnoremap <C-k> :m '<-2<CR>gv=gv
	vnoremap <C-j> :m '>+1<CR>gv=gv


"TERMINAL MODE"
	tnoremap <Esc> <C-\\><C-n>


"LEADER"
	let mapleader = " "

	"Actions"
	"nmap <leader>~ <AcTion>(Run)
	"nmap <leader>` <action>(RunClass)
	"nmap <leader>d <action>(Debug)
	"nmap <leader>b <action>(ToggleLineBreakpoint)


	"Navigation"
	nmap <leader>e :NERDTreeToggle<CR>
	nmap <leader>q :q<CR>
	"nmap <leader>q <action>(CloseEditor)
	"nmap <leader>t <action>(NextTab)
	"nmap <leader>r <action>(PreviousTab)
	nmap <leader>w <C-w>w
	nmap <leader>v <C-w>v
	nmap <leader>h <C-w>s

	"Appends"
	nmap <leader><leader>, A,<Esc>j
	nmap <leader><leader>; A;<Esc>j
	nmap <leader><leader>' I'<Esc>A'<Esc>j
	nmap <leader><leader>" I"<Esc>A"<Esc>j
	nmap <leader><leader>( I(<Esc>A)<Esc>j
	nmap <leader><leader>) <leader>(
	nmap <leader><leader>[ I[<Esc>A]<Esc>j
	nmap <leader><leader>] <leader>[
	nmap <leader><leader>{ I{<Esc>A}<Esc>j
	nmap <leader><leader>} <leader>{


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

    highlight Normal guifg=#CCCCCC guibg=#10003a
    highlight NormalNC guifg=#CCCCCC guibg=#10003a

    highlight TabLine guifg=#444444 guibg=#000000
    highlight TabLineSel guifg=#CCCCCC guibg=#10003a
    highlight MatchParen guifg=#2ACCF5 gui=underline

    highlight CursorLine guibg=#444444
    highlight CursorLineNr guifg=#cccc00
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
    highlight Include guifg=#2accf5 "Import
    highlight Typedef guifg=#2accf5 "Class
    highlight Conditional guifg=#2accf5 "If
    highlight Define guifg=#2accf5 "Define
    highlight Repeat guifg=#2accf5 "For/while
    highlight Exception guifg=#2accf5 "Try/Except
    highlight Statement guifg=#2accf5  "General statement words

    "FUNCTIONS
    highlight Type guifg=#a6e22e
    highlight Function guifg=#a6e22e
