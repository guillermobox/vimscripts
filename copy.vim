vmap <C-c> y:call system("xclip -in -selection clipboard", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("xclip -out -selection clipboard"))<CR>p
