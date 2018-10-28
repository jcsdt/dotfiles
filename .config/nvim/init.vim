" === GENERAL ===
" * Terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

if has('nvim') && executable('nvr')
let $VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif

" === COLOR SCHEME ===
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

" === PACKAGE MANAGEMENT ===

packadd minpac
call minpac#init()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" === VIM UNIMPAIRED ===
call minpac#add('tpope/vim-unimpaired')

" === VIM PROJECTIONIST ===
call minpac#add('tpope/vim-projectionist')

" === VIM DISPATCH ===
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')

" === FZF ===
call minpac#add('junegunn/fzf')

nnoremap <C-p> :<C-u>FZF<CR>

" === ALE ===
call minpac#add('w0rp/ale')

" For JavaScript files, use `eslint` (and only eslint)
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ }
" Mappings in the style of unimpaired-next
nmap <silent> (W <Plug>(ale_first)
nmap <silent> (w <Plug>(ale_previous)
nmap <silent> )w <Plug>(ale_next)
nmap <silent> )W <Plug>(ale_last)

" === VIM GREPPER ===
call minpac#add('mhinz/vim-grepper')

let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
nmap gs <plug>(GrepperOperator)
" Open Grepper-prompt for a particular grep-alike tool
nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>

" === VIM TEST ===
call minpac#add('janko-m/vim-test')

" === EDITOR CONFIG ===
call minpac#add('sgur/vim-editorconfig')
