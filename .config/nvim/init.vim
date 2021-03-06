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

" === TMUX ===
" Move between vim and tmux splits
call minpac#add('christoomey/vim-tmux-navigator')

" === FZF ===
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <C-c> :<C-u>Rg<CR>

" === Autoformat ===
function! Autoformat() abort
  let stdin = getline(1, '$')
  let stdout = systemlist(b:autoformat, stdin)

  call deletebufline("%", 1, "$")
  if v:shell_error
    call setline(1 , stdin)
  else
    call setline(1 , stdout)
  endif
endfunction

set formatexpr=Autoformat()

autocmd BufWritePre * if exists("b:autoformat") | execute(':normal gggqG') | endif

" === HIGHLIGHTING ===
call minpac#add('sheerun/vim-polyglot')

" === ALE ===
"call minpac#add('w0rp/ale')
"
"let g:ale_set_highlights = 0
"let g:ale_fix_on_save = 1
"let g:ale_lint_on_text_changed = 'never'
"
"let g:ale_fixers = {
"\ '*': ['remove_trailing_lines', 'trim_whitespace'],
"\ 'reason': ['refmt'],
"\ 'rust': ['rustfmt']
"\ }
"
"let g:ale_linters = {
"\ 'rust': ['analyzer']
"\ }

"" === VIM UNIMPAIRED ===
"call minpac#add('tpope/vim-unimpaired')
"
"" === VIM PROJECTIONIST ===
"call minpac#add('tpope/vim-projectionist')
"
"" === VIM DISPATCH ===
"call minpac#add('tpope/vim-dispatch')
"call minpac#add('radenling/vim-dispatch-neovim')
"
"" === ALE ===
"call minpac#add('w0rp/ale')
"
"let g:ale_set_highlights = 0
"let g:ale_fix_on_save = 1
"let g:ale_lint_on_text_changed = 'never'
"
"let g:ale_linters = {
"\ 'rust': ['rls', 'cargo'],
"\ 'python': ['flake8'],
"\ 'kotlin': ['kotlinc', 'ktlint'],
"\ }
"
"let g:ale_fixers = {
"\ '*': ['remove_trailing_lines', 'trim_whitespace'],
"\ 'rust': ['rustfmt'],
"\ 'python': ['black'],
"\ 'kotlin': ['ktlint'],
"\ }
"
"" Mappings in the style of unimpaired-next
"nmap <silent> (W <Plug>(ale_first)
"nmap <silent> (w <Plug>(ale_previous)
"nmap <silent> )w <Plug>(ale_next)
"nmap <silent> )W <Plug>(ale_last)
"
"" LSP
"noremap <silent> H :ALEHover<CR>
"noremap <silent> R :ALEFindReferences<CR>
"
"" Rust
"let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
"
"" === DEOPLETE ===
"call minpac#add('Shougo/deoplete.nvim')
"
"let g:deoplete#enable_at_startup = 1
"
"" Rust
"call minpac#add('racer-rust/vim-racer')
"
"" === VIM GREPPER ===
"call minpac#add('mhinz/vim-grepper')
"
"let g:grepper = {}
"let g:grepper.tools = ['rg', 'grep', 'git']
"" Search for the current word
"nnoremap <Leader>* :Grepper -cword -noprompt<CR>
"" Search for the current selection
"nmap gs <plug>(GrepperOperator)
"nmap gs <plug>(GrepperOperator)
"" Open Grepper-prompt for a particular grep-alike tool
"nnoremap <Leader>g :Grepper -tool git<CR>
"nnoremap <Leader>G :Grepper -tool rg<CR>
"
"" === VIM TEST ===
"call minpac#add('janko-m/vim-test')
"
"" === EDITOR CONFIG ===
"call minpac#add('sgur/vim-editorconfig')
"
"" === TMUX ===
"" Move between vim and tmux splits
"call minpac#add('christoomey/vim-tmux-navigator')
"
"" === cTags ===
"
"call minpac#add('majutsushi/tagbar')
"nmap <F8> :TagbarToggle<CR>
"
"call minpac#add('craigemery/vim-autotag')
"
"" === HIGHLIGHTING ===
"
"call minpac#add('sheerun/vim-polyglot')
