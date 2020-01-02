set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

"switching tabs"

nnoremap <C-Up> :tabnew<CR>
nnoremap <C-Down> :tabclose<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"will open new window on the rigth
set splitright
set splitbelow
nmap <F2><Right> :vsp <CR> <C-]> \| :set cursorline <CR> \| :wincmd w <CR> 
nmap <F2><Down> :sp <CR> <C-]> \| :set cursorline <CR> \| :wincmd w <CR> 

nmap <F3><down> :wincmd j <CR>
nmap <F3><up> :wincmd k <CR>
nmap <F3><right> :wincmd l <CR>
nmap <F3><left> :wincmd h <CR>
nmap <F3><Space> :q <CR>

nmap <F4><right> :vsp <CR>
nmap <F4><down> :sp <CR>

"open Explore"
nnoremap <C-x> :Explore<CR>

imap <Insert> <C-n>

map <F1><Down> :res -3 <CR>
map <F1><Up> :res +3 <CR>
map <F1><Left> :vertical resize -3 <CR>
map <F1><Right> :vertical resize +3 <CR>


"enable cscope"
set tags=./tags,tags;

"enable tagbar"
nmap <F12> :TagbarToggle<CR>

"Enable go plugins"
nmap <C-d> :tag expand("<cword>")<CR>
filetype plugin on

"go-vim specific"
autocmd FileType go nnoremap <F5> :GoCallers<CR>
autocmd FileType go nnoremap <F6> :GoDef<CR>
autocmd FileType go nnoremap <F7> :GoDescribe<CR>
autocmd FileType go nnoremap <F8> :GoImplements<CR>

"/erase entire file (asks for permission first)
nnoremap <F9> :! > % <CR>


if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif


"closes scrach window for youcompleteme"
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"don't draw the sidebar for YCM"
let g:ycm_enable_diagnostic_signs = 0

"select sexy color scheme"
:colorscheme eldar 
let g:go_highlight_trailing_whitespace_error=0

"enable mouse"
set mouse=a
set number

"fold based on syntax, and don't ever fold automatiicaly"
:set foldmethod=syntax
:set foldlevel=99

:let @f ="fmt.Println("
:let @i ="import "

"fixes some issue with vim airline"
set laststatus=2

:so ~/.vim/syntax/ifdef.vim
"nmap <C-d> :execute "Undefine" expand("<cword>")<CR>

set spelllang=en
set spellfile=$HOME/Dropbox/vim/spell/en.utf-8.add

nnoremap <C-d> :tag <C-R>=expand("<cword>")<CR><CR>  
nnoremap <C-f> :pop <CR>

set clipboard=unnamedplus
filetype plugin indent on
