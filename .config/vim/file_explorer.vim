" NETRW FILE EXPLORER (Vex)
function ToggleNetRW()
	if exists("g:netrw_buffer") && bufexists(g:netrw_buffer)
		exe "bd".g:netrw_buffer | unlet g:netrw_buffer
	else
		Vexplore | let g:netrw_buffer=bufnr("%")
	endif
endfunction

let g:netrw_browse_split=0  " open in same window
let g:netrw_liststyle=3  " tree view
let g:netrw_altv=1 " open splits to the right
let g_netrw_winsize=40

