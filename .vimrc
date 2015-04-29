set shell=/bin/bash
set bg=dark             "顯示不同的底色色調
set nu                  "可以在每一行的最前面顯示行號啦！
syntax on               "進行語法檢驗，顏色顯示der。
set hlsearch
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
nnoremap Q @='n.'<CR>
vnoremap <A-k> :m '<-2<CR>gv=gv
execute pathogen#infect()
Helptags
filetype plugin indent on
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:airline#extensions#hunks#enabled = 1

"ctrl+t 开启nerdtree
map <C-t> :NERDTreeToggle<CR>
"shortcut to copy/cut selection to system clipboard
vmap <C-x> :!pbcopy<CR>  
vmap <C-c> :w !pbcopy<CR><CR> 
vmap <C-v> :!pbpaste<CR><CR> 
filetype plugin on

"fix the bug that mac use a different ctags
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"quite nerd tree if no working window there
function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()
map ; <S-:>

let g:gitgutter_realtime=1



" make cp repeatable
nmap <Plug>TransposeCharacters xp
nmap cp <Plug>TransposeCharacters
nnoremap <silent> <Plug>TransposeCharacters xp
\:call repeat#set("\<Plug>TransposeCharacters")<CR>
nmap cp <Plug>TransposeCharacters


map <Leader>c :w !pbcopy<cr><cr>
map <Leader>p :r !pbpaste<cr>
xnoremap p pgvy


" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

nnoremap <Leader>r :RunInInteractiveShell<space>
