:set autoindent
:set hlsearch


execute pathogen#infect()
syntax on
filetype plugin indent on

au VimEnter *  NERDTree

let NERDTreeIgnore = ['\.pyc$', '\.mp4$', '\.flv$','\.avi$', 'Public$[[dir]]', 'Videos$[[dir]]', 'Music$[[dir]]', 'Pictures$[[dir]]', 'Templates$[[dir]]']
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeShowBookmarks=1

:set number

set noswapfile
set nobackup
set nowritebackup

nnoremap qw	:tabn<CR>
nnoremap wq	:tabp<CR>
nnoremap qe	:tabedit<Space>

autocmd BufWritePost *.py call Flake8()

command D :normal iimport pdb; pdb.set_trace()

colorscheme darkblue


function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre     *.py :call TrimWhiteSpace()


"hightlight cursor
set cursorline
"autocmd InsertEnter * highlight CursorLine guifg=white guibg=blue ctermfg=white ctermbg=blue
"autocmd InsertLeave * highlight CursorLine guifg=white guibg=darkblue ctermfg=white ctermbg=darkblue

"ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim


" gruvbox color theme
autocmd vimenter * ++nested colorscheme gruvbox


" new window in ctrlp
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" bold cursor
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=0\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
