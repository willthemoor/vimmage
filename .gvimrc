if has("gui_macvim")
	set macmeta						" Use option (alt) as meta key.  When on, option-key presses are not
	" interpreted, thus enabling bindings to <M-..>

	" Fullscreen takes up entire screen
	set fuoptions=maxhorz,maxvert

	" Command-T for CommandT
	macmenu &File.New\ Tab key=<D-T>
	"unmap <D-t> :CommandT<CR>
	"iunmap <D-t> <Esc>:CommandT<CR>

	" Command-P for control-p
	macmenu &File.Print key=<C-D-0>
	map <D-p> :CtrlPMixed<CR>
	imap <D-p> <Esc>:CtrlPMixed<CR>
	map <D-t> :CtrlP<CR>
	imap <D-t> <Esc>:CtrlP<CR>

	" Command B for CommandTBuffer 
	macmenu &Tools.Make key=<nop>
	"unmap <D-b> :CommandTBuffer<CR>
	map <D-b> :CtrlPBuffer<CR>

	" Command-Return for fullscreen
	"macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

	" MacVIM shift+arrow-keys to select (required in .vimrc)
	let macvim_hig_shift_movement = 0

	" Command-Shift-F for Ack
	map <D-F> :Ack<space>

	" Command-/ to toggle comments
	map <D-/> <plug>NERDCommenterToggle<CR>
	imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i


	" Command-][ to increase/decrease indentation
	vmap <D-]> >gv
	vmap <D-[> <gv

	" Map Command-# to switch tabs
	map  <D-0> 0gt
	imap <D-0> <Esc>0gt
	map  <D-1> 1gt
	imap <D-1> <Esc>1gt
	map  <D-2> 2gt
	imap <D-2> <Esc>2gt
	map  <D-3> 3gt
	imap <D-3> <Esc>3gt
	map  <D-4> 4gt
	imap <D-4> <Esc>4gt
	map  <D-5> 5gt
	imap <D-5> <Esc>5gt
	map  <D-6> 6gt
	imap <D-6> <Esc>6gt
	map  <D-7> 7gt
	imap <D-7> <Esc>7gt
	map  <D-8> 8gt
	imap <D-8> <Esc>8gt
	"cmd-9 goes to the last tab, like firefox and chrome and heaven.
	map  <D-9> :tabl <CR>
	imap <D-9> <Esc>:tabl <CR>

	" Command-Option-ArrowKey to switch viewports
	map <D-M-Up> <C-w>k
	imap <D-M-Up> <Esc> <C-w>k
	map <D-M-Down> <C-w>j
	imap <D-M-Down> <Esc> <C-w>j
	map <D-M-Right> <C-w>l
	imap <D-M-Right> <Esc> <C-w>l
	map <D-M-Left> <C-w>h
	imap <D-M-Left> <C-w>h

	" Adjust viewports to the same size
	map <Leader>= <C-w>=
	imap <Leader>= <Esc> <C-w>=
endif



" Start without the toolbar
set guioptions-=T

" Default gui color scheme
color solarized

" $VIMRUNTIME/rgb.txt

