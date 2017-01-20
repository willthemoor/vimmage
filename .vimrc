set nocompatible              " be iMproved, required
filetype off                  " required


" This config is using Vundle: 
" https://github.com/gmarik/Vundle.vim

" Brief Vundle help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update 
" :PluginUpdate		- update all plugins
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" 
" To install one plugin quickly, add it here:
" Plugin 'githubuser/foobar'
" save the file and then run an update without the GH user prefix
" :PluginUpdate foobar

" set the runtime path to include Vundle and initialize
" ~/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim74,/usr/local/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()



" General/Random Plugins {

	Plugin 'gmarik/vundle'					" Let Vundle manage Vundle
	Plugin 'tpope/vim-fugitive'
	Plugin 'bling/vim-airline'
	Plugin 'vim-airline/vim-airline-themes' " Now separate from the Airline repo
	"Plugin 'ervandew/supertab'				" Hit tab to complete words
	Plugin 'mbbill/undotree'

" }


" Editing { 

	"Plugin 'myusuf3/numbers.vim'			" Switch to relative number in insert mode
	Plugin 'tpope/vim-repeat'				" Repeat some plugin calls with .
	Plugin 'tmhedberg/matchit'				" Match stuff like if/else with %
	Plugin 'tpope/vim-speeddating'			" <C-A> and <C-X> for dates, ordinals...
	Plugin 'junegunn/vim-easy-align'		" Align stuff
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'tpope/vim-surround'				" Change surroundings likequotes  or ( to [
	Plugin 'somini/vim-autoclose'
	"Plugin 'spf13/vim-autoclose'			" For [, (, {, quotes
	"let g:autoclose_vim_commentmode = 1	" to avoid auto close in vim comments

" }


" Search/Files {

	Plugin 'kien/ctrlp.vim'
	Plugin 'tacahiroy/ctrlp-funky'
	Plugin 'vim-scripts/sessionman.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'rking/ag.vim'
	" or http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/ one day?

" }


" Syntax/Language {

	Plugin 'scrooloose/syntastic'			" Syntax Highlighting and code checking
	Plugin 'mattn/emmet-vim'				" zen coding 2.0 / sparkup
	"Plugin 'maksimr/vim-jsbeautify'			" requires .editorconfig file
	"Plugin 'einars/js-beautify'				" Required for vim version
	Plugin 'pangloss/vim-javascript'
	Plugin 'elzr/vim-json'
	"Plugin 'spf13/PIV'						" PHP Action
	Plugin 'JulesWang/css.vim'				" Better CSS3 Syntax
	" Alternative? https://github.com/hail2u/vim-css3-syntax
	"Plugin 'groenewege/vim-less'
	Plugin 'willthemoor/vim-coloresque'		" Show colors as background in CSS
	Plugin 'digitaltoad/vim-jade'
	Plugin 'davejlong/cf-utils.vim'         " ColdFusion syntax
	"Plugin 'slim-template/vim-slim'
	" <Leader>P by default for vim preview
	"Plugin 'greyblake/vim-preview'			" Preview for Markdown files

" }


" Snippets {

	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	" @TODO ^ Fork and update with mine
	"Plugin 'willthemoor/mcss-for-snipmate'
	" Mappings when more than one key is pressed at a time:
	" https://github.com/kana/vim-arpeggio/blob/master/doc/arpeggio.txt
	

" }


" Colors {

	Bundle 'nanotech/jellybeans.vim'
	Bundle 'altercation/vim-colors-solarized'
	Bundle 'sickill/vim-monokai'
	Bundle 'tomasr/molokai'

" }

" Maybe interesting....
" https://github.com/spf13/spf13-vim/
" https://github.com/tony/vim-config 
" https://github.com/sgur/ctrlp-extensions.vim (command line, menus and yankring)
" https://github.com/fisadev/vim-ctrlp-cmdpalette (vim commands via ctrl-p)
" https://github.com/mattn/ctrlp-register 
" https://github.com/FriedSock/ctrlpsimilar
" https://github.com/tpope/vim-ragtag
" https://github.com/maxbrunsfeld/vim-yankstack


" All Plugins must be added before the following line
" -------------------------------------------------------------------------------------

call vundle#end()            " required
filetype plugin indent on    " required

" -------------------------------------------------------------------------------------
" Put your non-Plugin stuff after this line
" -------------------------------------------------------------------------------------



" config stuff I forget {
	" JUMP to this .vimrc with 'V

	" to 'unset' something previously set: set no[commandname]
		" set noruler or set ruler!
		" to query a value type :set [commandname]?

	" to remove a map or abbreviation
		" unmap foo or iunmap foo or vunmap foo ...
		" una foo or iuna foo or vuna foo

	"to view all mappings and abbreviations
		":map or :imap or :nmap ... You can filter them too: ":nmap foo"
		":ab or :iab or ...

	" to see where something was last set, prefix it with 'verbose'
		" :verbose set ruler
	
	"http://learnvimscriptthehardway.stevelosh.com/
"}



" @TODO Move all of the bundle stuff into .vimrc.bundles?
"
" Use bundles config {
" if filereadable(expand("~/.vimrc.bundles"))
"	source ~/.vimrc.bundles
" endif
" }


""""""""" Stay sexy {
	set background=dark			" dark/light
	colorscheme solarized
	" set guifont=Menlo\ For\ Powerline:h12
	set guifont=Meslo\ LG\ M\ Regular\ For\ Powerline:h12
	"set guifont=Avenir\ Book:h16
	set linespace=2				" breathing room
	set number
	set title					" doc title visible in the terminal
	"set cursorcolumn			" on for jade and slim

	set cursorline				" Highlight current line 
    " Get rid of it when leaving the window
	augroup vimrc_set_cursorline
		autocmd!
		autocmd WinLeave * setlocal nocursorline
		autocmd InsertEnter * highlight CursorLine guifg=AntiqueWhite guibg=#002124 ctermfg=white ctermbg=black
		autocmd InsertLeave * highlight CursorLine guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE
		"autocmd VimEnter,BufWinEnter,WinEnter * setlocal cursorline
	augroup END

	" tune the blinking of the cursor, short off, long on.
	set guicursor=a:blinkwait200-blinkon1300-blinkoff150  
	set guicursor+=i-ci:ver25-Cursor

	" switch from light to dark background
	map <Leader>x :call ToggleBG()<CR> 


" }




""""""""" Whitespace stuff {

	" Check 'FileTypes' for language specific tab/space/indent/... settings
	set nowrap				" toggle with <f4>
	set tabstop=4
    set shiftwidth=4        " Use indents of 4 spaces
	set softtabstop=4
	set noexpandtab			" dammit
    set autoindent          " Indent at the same level of the previous line
	set encoding=utf-8
	set tw=120				" 120 is the new 80. type 'gq' to trigger on a line
	set showbreak=↪			" visible wraps
    set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

	" Shortcut to rapidly toggle showing invisible characters via `set list`
	nmap <leader>l :set list!<CR>
	if has("gui_running")
		set listchars=tab:▸\ ,eol:¬,trail:·,precedes:«,extends:»
	else
		"set listchars=tab:>-,eol:%,trail:~
		set listchars=tab:>-,trail:~
	endif


	" remove white space from the end of lines on save
	augroup whitespace
		autocmd!
		autocmd FileType php,javascript,puppet,python,xml,yml,perl,css,less,jade autocmd BufWritePre <buffer> call StripTrailingWhitespace() 
	augroup END
	
" }




""""""""" Searching {

	set incsearch			" search as you type
	set ignorecase
	set smartcase
	set hlsearch			" highlight the search term in the file
	set showmatch			" highlight matching brackets 
	" Space or ,/ removes highlighted search terms 
	nmap <SPACE> :noh<CR>
	
	" Map <Leader>ff to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
" }




"""""""" Tab completion {

	set wildmode=list:longest,list:full
	set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
	set wildmenu

" }




"""""""" control and other random settings {

	set visualbell					" lol @ the beep
	set backspace=indent,eol,start " allow backspacing over everything.
	set mouse=a						" automatically enable mouse usage
	set timeoutlen=600				" faster parsing for overlapping key commands.
	set ttimeoutlen=50  			" Air/Powerline appreciate this
	set history=1000				" let's remember
	"set spell						" spell checking on. ,sp to toggle it in real time.
	
	set hidden						" allow buffer switching without saving
	set shortmess+=filmnrxoOtT      " abbrev. of messages (avoids 'hit enter')

	" By default, vim thinks that numbers that start with zero are octal
	set nrformats=					" (this is setting it to nothing).

	set gdefault					" substitutions are greedy by default. with this set, /g turns it off.

	set selectmode=mouse			" selected text starts in select mode ala Word--type to overwrite. 
									" CTRL-G toggles Visual/Select modes. 

	if has("gui_macvim")
		" MacVIM shift+arrow-keys to select (required in .vimrc)
		let macvim_hig_shift_movement = 0
	endif

	" no need + security hole
	set nomodeline
	set modelines=0

	set splitbelow					" New window goes below
	set splitright					" New windows goes right
	
	set exrc						" Allow project level .vimrc files
	set secure						" make sure there's no funny business in folder level .vimrc files


	" Make jj a shortcut for ESC
	inoremap jj <ESC>
	
" }





""""""""" FILE TYPES {

	syntax on

	augroup FileTypeSettings
		autocmd!

		" for cakephp
		au BufNewFile,BufRead *.ctp set ft=php
		au FileType *.ctp set ft=php

		" add json, sass and scss syntax highlighting
		"au BufNewFile,BufRead *.json set ft=javascript
		au BufRead,BufNewFile *.sass set filetype=css
		au BufRead,BufNewFile *.scss set filetype=css

		" syntax highlighting fixes for html/php files with JS embeded
		au BufEnter *.html,*.htm,*.php syntax sync fromstart

		" More config options at https://github.com/kchmck/vim-coffee-script
		au BufWritePost *.coffee silent CoffeeMake!
		au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

		" Help Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
		au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
		
		"au BufRead,BufNewFile *.less set filetype=less	
		au Filetype less setlocal ts=4 sts=4 sw=4 noexpandtab

		" Compile LessCSS on save
		"autocmd BufWritePost,FileWritePost *.less :silent !lessc <afile> <afile>:p:r.css
		
		" Slim/Jade are delicate
		" :set list to show tabs
		" :retab! to replace tabs with spaces or spaces with tabs
		au BufRead,BufNewFile *.slim  setlocal ts=2 sts=2 sw=2 expandtab cursorcolumn
		au Filetype,BufNewFile,BufRead jade setlocal ts=2 sts=2 sw=2 expandtab cursorcolumn

		" Instead of reverting the cursor to the last position in the buffer,
		" this sets it to the first line when editing a git commit message
		au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
		autocmd FileType gitcommit setlocal spell

	augroup END

" }




"""""""" MAPPINGS {

	" basic mappings {
		let mapleader = ","

		" Making it so ; works like : for commands. 
		" use ;; for next f/t F/T find
		nnoremap ; :
		nnoremap ;; ;

		imap jk <Esc>
		imap <M-Enter> <Esc>

		" Just say no. or ok for now.
		"imap <Down> <nop>
		"imap <Up> <nop>
		"imap <Left> <nop>
		"imap <Right> <nop>

		" Smart way to move btw windows
		map <C-j> <C-W>j
		map <C-k> <C-W>k
		map <C-h> <C-W>h
		map <C-l> <C-W>l
			
		" Cycle through windows. Command-Option-ArrowKey does the same via .gvimrc
		map <C-S-TAB> <C-W><C-W>

		" Move a horizontal split into a vertical one. like help.
		map <leader>v <C-W><S-L>

		" Switch to previous tab
		let g:lasttab = 1
		map <C-TAB> :exe "tabn ".g:lasttab<CR>
		au TabLeave * let g:lasttab = tabpagenr()

		" Switch to previous buffer
		map <M-TAB> :b#<CR>
		cmap bdd :b#<CR> :bd#<CR>

		" <M-X> not working here. use the actual character sent by OSX. 
		"nmap <M-b> <C-O>
		nmap ∫ <C-O>
		nmap ı <C-I>
		nmap <leader>j <C-O>
		nmap <leader>k <C-I>
		"nmap <leader>f <C-I>

		" just in case you need sudo to save
		cmap w!! w !sudo tee % >/dev/null

		map <F4> :set nowrap!<CR> " toggle line wraps with f4

		" Pressing ,sp will toggle and untoggle spell checking
		map <leader>sp :setlocal spell!<cr>

		" Visual shifting (does not exit Visual mode)
		vnoremap < <gv
		vnoremap > >gv

		" Allow using the repeat operator with a visual selection (!)
		" http://stackoverflow.com/a/8064607/127816
		vnoremap . :normal .<CR>
	"}

	" Path helpers {
		" Opens an edit command with the path of the currently edited file filled in
		map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

		" Opens a tab edit command with the path of the currently edited file filled in
		map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

		" Inserts the path of the currently edited file into a command
		cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

		" set autochdir " always sets path to current file's directory
		" :cd %:p:h does the same when you need it

		" Change Working Directory to that of the current file
		cmap cwd lcd %:p:h
		cmap cd. :cd %:p:h

		nmap <leader>hm :cd ~/ <CR>
		nmap <leader>ww :cd ~/www <CR>

	" }

	" scroll with vigour {
		"nnoremap <C-e> 5<C-e>  " used for emmet for now.
		nnoremap <C-y> 5<C-y>
		set scrolloff=3			" Minimal number of screen lines to keep above and below the cursor.
	"}

	" Folding {
		set foldmethod=indent   " fold based on indent
		set foldnestmax=4       " deepest fold is 4 levels
		set nofoldenable        " dont fold by default. zi to toggle.
		set foldlevel=2         

		" Code folding options
		" ,f to trigger manual folding
		" 0 = deep folding, 9 = no folding (practically)
		nmap <leader>f0 :set foldlevel=0<CR>
		nmap <leader>f1 :set foldlevel=1<CR>
		nmap <leader>f2 :set foldlevel=2<CR>
		nmap <leader>f3 :set foldlevel=3<CR>
		nmap <leader>f4 :set foldlevel=4<CR>
		nmap <leader>f5 :set foldlevel=5<CR>
		nmap <leader>f6 :set foldlevel=6<CR>
		nmap <leader>f7 :set foldlevel=7<CR>
		nmap <leader>f8 :set foldlevel=8<CR>
		nmap <leader>f9 :set foldlevel=9<CR>
	"}

	" Textmate style line manipulation {

		" Move line up/down with ctrl+up/down arrow. Normal and multi-line visual mode
		nmap <C-Up> ddkP 
		nmap <C-Down> ddp
		vmap <C-Up> xkP`[V`]
		vmap <C-Down> xp`[V`]
		inoremap <C-Up> <Esc>:m .+1<CR>==gi
		inoremap <C-Up> <Esc>:m .-2<CR>==gi
		" duplicate line 
		map <C-D> yyp

		" New Line Goodness
		map <C-Enter> o<Esc>
		map <S-Enter> O<Esc>
		imap <S-Enter> <Esc>O
		imap <C-Enter> <Esc>o

		" Yank from the cursor to the end of the line, to be consistent with C and D.
		nnoremap Y y$
		
		" Wrapped lines goes down/up to next row, rather than next line in file.
		"noremap j gj
		"noremap k gk


	"}

"}

" Memories {

	augroup memories
		autocmd!

		" remember folds and what not per file. *.* to avoid complaints when opening vim w/o a file
		au BufWinLeave *.* mkview
		au BufWinEnter *.* silent loadview
		" someone on the internet thinks this is better. http://vim.wikia.com/wiki/Make_views_automatic
		"au BufWritePost,BufLeave,WinLeave ?* mkview
		"au BufReadPre ?* silent loadview

		" Remember last location in file
		if has("autocmd")
		  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
			\| exe "normal g'\"" | endif
		endif

		" Directories {
			set noswapfile
			set backupdir=~/.vim/backup
			set directory=~/.vim/backup
		"}

		" undo after you've closed a buffer and/or vim
		try
			set undodir=~/.vim/backup/undodir
			set undofile
		catch
		endtry
	
	augroup END
"}








"
" Helper Functions {

	"This allows for change paste motion cp{motion}
	nmap <silent> cp :set opfunc=ChangePaste<CR>g@
	function! ChangePaste(type, ...)
		silent exe "normal! `[v`]\"_c"
		silent exe "normal! p"
	endfunction

	" Toggle background color
	function! ToggleBG()
		let&background = ( &background == "dark"? "light" : "dark" )
	endfunction


    " Strip whitespace {
    function! StripTrailingWhitespace()
        " Preparation: save last search, and cursor position.
        let _s=@/
        let l = line(".")
        let c = col(".")
        " do the business:
        %s/\s\+$//e
        " clean up: restore previous search history, and cursor position
        let @/=_s
        call cursor(l, c)
    endfunction
    " }
	
	" toggle line numbers from absolute to relative with f2.
	" 11/14: handled via Vim-Numbers plugin now
	"map <silent> <F7> :if &number <Bar>
		"\set relativenumber <Bar>
			"\else <Bar>
		"\set number <Bar>
			"\endif<cr>

	" Source the vimrc file after saving it. Saves a reload.
	" added 'nested' on 17/10/12 to fix powerline issue https://github.com/Lokaltog/vim-powerline/issues/204
	if has("autocmd")
	 augroup myvimrchooks
	  au!
	  autocmd bufwritepost .vimrc nested source ~/.vimrc
	 augroup END
	endif

	" diffs are handy	
	nnoremap <silent> <Leader>df :call DiffToggle()<CR>
	function! DiffToggle()
		if &diff
			diffoff!
		else
			windo diffthis
		endif
	:endfunction


	" auto complete {} indent and position the cursor in the middle line
	" 11/14 Handled via plugin now
	"inoremap {<CR> {<CR>}<Esc>O
	"inoremap (<CR> (<CR>)<Esc>O
	"inoremap [<CR> [<CR>]<Esc>O
	

	" toggle function folds with f2
	"vmap <Leader>f :call
	" TODO - should check to see if there is already a foldstart on the current
	" line first. just piling up folds at the moment.
	"map <F2>  :call FoldToggler()<CR>
	" function! FoldToggler()
	"     :let xxx=line(".")
	"     :let c=getline(".")[col(".") - 1]	
	"     echo c
	"     if foldclosed(xxx) == -1
	"         normal zf%<CR>
	"     else
	"         if c != "{" || c != "}"
	"             "presume we're on a function name somewhere
	"             normal f{ 
	"         endif	
	"         normal zo%<cr>

	"     endif
	" endfunction


	" not working. quote problem? Is actually stored though can be overwritten.
	"let @d = 'bdwiconsole.log('": ', ");'
	"console.log('owehowehoweh: ', owehowehoweh);
	"let @c = 'bdwiconsole.log(\'pa: \', pa);'


"}
"










""""""""" Plugins.

	" vim-Javascript {
		" settings for https://github.com/pangloss/vim-javascript
		let g:html_indent_inctags = "html,body,head,tbody"
		let g:html_indent_script1 = "inc"
		let g:html_indent_style1 = "inc"
	"} 


	" easy-align {
		" Start interactive EasyAlign in visual mode
		vmap <Leader>a <Plug>(EasyAlign)

		" Start interactive EasyAlign with a Vim movement
		nmap <Leader>a <Plug>(EasyAlign)

	"}
	"
	
    " Numbers {
		" Switch between relative and absolute numbers
		nnoremap <F7> :NumbersToggle<CR>
    " }

    " PIV {
        if isdirectory(expand("~/.vim/bundle/PIV"))
            let g:DisableAutoPHPFolding = 0
            let g:PIVAutoClose = 0
        endif
    " }

    " UndoTree {
        if isdirectory(expand("~/.vim/bundle/undotree/"))
            nnoremap <Leader>u :UndotreeToggle<CR>
            " If undotree is opened, it is likely one wants to interact with it.
            let g:undotree_SetFocusWhenToggle=1
        endif
    " }
	
	" UltiSnips {
		let g:UltiSnipsEditSplit = "vertical"
		" Location of private snippets
		"let g:UltiSnipsSnippetDirectories=["UltiSnips", "will-snippets", "mcss-for-snipmate"]
		let g:UltiSnipsSnippetDirectories=["UltiSnips"]
		"let g:UltiSnipsSnippetsDir = "~/.vim/will-snippets"
		let g:UltiSnipsExpandTrigger = "<Tab>"
		let g:UltiSnipsJumpForwardTrigger = "<Tab>"
		let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
		let g:UltiSnipsEnableSnipMate = 1
		let g:UltiSnipsListSnippets = "<C-Tab>"
	" }

	" Emmet/Zen coding reminder {
		" <c-y> to enter zen coding mode, then
		" , : trigger expansion
		" , : Wrap visual selection
		" n : jump to next edit point
		" N : jump to next previous point
		" / : toggle a comment an html block
		" a : make an anchor from a url

		" Only want Emmet for htmlish files. CSS would be nice but it's breaking snippets 
		let g:user_emmet_install_global = 0
		autocmd FileType html,jade,haml,php,cfml,cf EmmetInstall
		" Share the tab key with vim https://github.com/mattn/emmet-vim/issues/168
		"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
		let g:user_emmet_leader_key = '<C-e>'
		let g:user_emmet_next_key='<C-n>'
		let g:Nser_emmet_prev_key='<C-N>'

		"
		" All available mappings in helpfile:
		"'user_emmet_expandabbr_key'
		"'user_emmet_expandword_key'
		"'user_emmet_balancetaginward_key'
		"'user_emmet_balancetagoutward_key'
		"'user_emmet_next_key'
		"'user_emmet_prev_key'
		"'user_emmet_imagesize_key'
		"'user_emmet_togglecomment_key'
		"'user_emmet_splitjointag_key'
		"'user_emmet_removetag_key'
		"'user_emmet_anchorizeurl_key'
		"'user_emmet_anchorizesummary_key'
		"

	  "Or if you want to use <plug> mappings

		"emmet-expand-abbr
		"emmet-expand-word
		"emmet-balance-tag-inward
		"emmet-balance-tag-outward
		"emmet-move-next
		"emmet-move-prev
		"emmet-image-size
		"emmet-toggle-comment
		"emmet-split-join-tag
		"emmet-remove-tag
		"emmet-anchorize-url
		"emmet-anchorize-summary
		"emmet-merge-lines
		"emmet-code-pretty

	  "So you can make the mapping affected only for a filetype you want.
	  "autocmd FileType css imap <tab> <plug>(emmet-expand-abbr)



		"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
		" Couldn't get this to take with C-q
		"let g:user_emmet_leader_key = '<C-q>'
		"let user_emmet_expandabbr_key = '<c-e>'
		"imap hh <C-y>,
		if has('gui_macvim')
			"let user_emmet_expandabbr_key = '<c-e>'



		endif
	"}

	" Syntastic {
		let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
		let g:syntastic_check_on_open = 0
		let g:syntastic_check_on_wq = 1
		let g:syntastic_error_symbol = '✗'
		let g:syntastic_warning_symbol = '⚠'
		"let g:syntastic_warning_symbol = '»'
		let g:syntastic_style_error_symbol = 'S✗'
		let g:syntastic_style_warning_symbol = 'S⚠'
		let g:syntastic_loc_list_height = 5
		"highlight SyntasticWarningSign gui=bold guifg=red
		highlight SyntasticErrorSign gui=bold guifg=red
		highlight SyntasticWarningSign gui=bold guifg=yellow
	" }

	
	" Snipmate {
		"let g:snips_author = "Will Moore"
		" to reset the snipmate trigger (defaults to tab)
		" let g:snips_trigger_key='<c-space>'
		"if ( !exists('g:snipMate') ) 
			"let g:snipMate = {}
			"let g:snipMate.scope_aliases = {}
		"endif
		"let g:snipMate.scope_aliases['less'] = 'css,less'
	" }


	" ctrlp {
		"let g:ctrlp_match_window_bottom = 0 " Show at top of window
		"let g:ctrlp_working_path_mode = 2 " Smart path mode
		"let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
		"let g:ctrlp_switch_buffer = 'et'
		"let g:ctrlp_split_window = 1 " <CR> = New Tab
		"let g:ctrlp_open_new_file = 't' " Open newly created files in a new tab
		"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|.svn\|.git\'
		set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
	"}

    " ctrlp {
		" https://github.com/kshenoy/dotvim/blob/master/bundle.vim#L158-L204
		let g:ctrlp_working_path_mode = 'ra'	" start in the nearest ancestor that 1 of contains: .git .hg .svn .bzr _darcs
		let g:ctrlp_mruf_relative = 1 "Show only MRU files in the working directory.
		
		nnoremap <silent> <D-t> :CtrlP<CR>
		nnoremap <silent> <D-r> :CtrlPMRU<CR>
		let g:ctrlp_custom_ignore = {
			\ 'dir':  'node_modules\|\.git$\|\.hg$\|\.svn$',
			\ 'file': '\.exe$\|\.so$\|\.dll$\|\.DS_Store\|\.pyc$' }

		if executable('ag')
			let s:ctrlp_fallback = 'ag %s --nocolor -l -g ""'
		elseif executable('ack-grep')
			let s:ctrlp_fallback = 'ack-grep %s --nocolor -f'
		elseif executable('ack')
			let s:ctrlp_fallback = 'ack %s --nocolor -f'
		else
			let s:ctrlp_fallback = 'find %s -type f'
		endif

		let g:ctrlp_user_command = {
			\ 'types': {
				\ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
				\ 2: ['.hg', 'hg --cwd %s locate -I .'],
			\ },
			\ 'fallback': s:ctrlp_fallback
		\ }

		if isdirectory(expand("~/.vim/bundle/ctrlp-funky/"))
			" search for function defs
			let g:ctrlp_extensions = ['funky']

			"funky
			nnoremap <Leader>fu :CtrlPFunky<Cr>
			" narrow the list down with a word under cursor
			nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
		endif
    "}

" Powerline {
	"
	let g:Powerline_symbols = 'fancy'

	" not specific to powerline but grouped here anyway.
	set showcmd							" Show (partial) command in the status line
	set laststatus=2					" Always show the statusline
	
	"let g:Powerline_cache_enabled = 0 "uncomment to hack
	
"}
"
" Airline {
	let g:airline_powerline_fonts = 1
	"	themes are automatically selected based on the matching colorscheme. this can be overridden by defining a value. >
	" let g:airline_theme='base16_solarized'
	let g:airline_theme='dark'

	if !exists('g:airline_symbols')
		"let g:airline_symbols = {}
	endif

	" unicode symbols

	" let g:airline_left_sep = '»'
	" let g:airline_left_sep = '▶'
	" let g:airline_right_sep = '«'
	" let g:airline_right_sep = '◀'
	" let g:airline_symbols.linenr = '␊'
	" let g:airline_symbols.linenr = '␤'
	" let g:airline_symbols.linenr = '¶'
	" let g:airline_symbols.branch = '⎇'
	" let g:airline_symbols.paste = 'ρ'
	" let g:airline_symbols.paste = 'Þ'
	" let g:airline_symbols.paste = '∥'
	" let g:airline_symbols.whitespace = 'Ξ'

	" These are the defaults
	"let g:airline_mode_map = {
		"\ '__' : '-',
		"\ 'n' : 'N',
		"\ 'i' : 'I',
		"\ 'R' : 'R',
		"\ 'c' : 'C',
		"\ 'v' : 'V',
		"\ 'V' : 'V',
		"\ '' : 'V',
		"\ 's' : 'S',
		"\ 'S' : 'S',
		"\ '' : 'S',
		"\ }
		"
	" defines whether the preview window should be excluded from have its window statusline 
		" modified (may help with plugins which use the preview window heavily) >
		" let g:airline_exclude_preview = 0
		
		" enable/disable syntastic integration >
		" let g:airline#extensions#syntastic#enabled = 1
" }


map <Leader>gs :Gstatus<CR>
"map <Leader><Leader> :ZoomWin<CR>
let g:CommandTMaxHeight = 15



" NerdTree {
	"more nerdtree action in .gvimrc
	map <Leader>n :NERDTreeToggle<CR>
    map <leader>nf :NERDTreeFind<CR>

    let NERDTreeShowBookmarks=1
    let NERDTreeIgnore=['\.pyc', '\~$', '.DS_Store', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
    let NERDTreeChDirMode=0
    let NERDTreeQuitOnOpen=1
    let NERDTreeShowHidden=1
    let NERDTreeKeepTreeInNewTab=1
	let NERDTreeMouseMode=2
	
" }

" Session List {
	set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
	nmap <leader>sl :SessionList<CR>
	nmap <leader>ss :SessionSave<CR>
" }


"Helpful abbreviations
" dumb js string+var+string via '''
"iab ''' '+ +'<ESC>hhi
"iab """ "+ +"<ESC>hhi
iab teh the
iab Ydate <C-R>=strftime("%d/%m/%y")<CR>
" Example: 971027
iab Ytime <C-R>=strftime("%H:%M")<CR>
" Example: 14:28
iab YDT <C-R>=strftime("%d/%m/%y %T")<CR>
" Example: 971027 12:00:00
iab YDATE <C-R>=strftime("%a %b %d %T %Z %Y")<CR>
" Example: Tue Dec 16 12:07:00 CET 1997
