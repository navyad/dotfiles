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
