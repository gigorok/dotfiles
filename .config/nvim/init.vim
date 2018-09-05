let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ruby_host_prog = 'rvm system do neovim-ruby-host'

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-unimpaired')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('jiangmiao/auto-pairs')
call minpac#add('w0rp/ale')
call minpac#add('chriskempson/base16-vim')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-fugitive')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('pangloss/vim-javascript')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-bundler')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-surround')
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'})
call minpac#add('SirVer/ultisnips')
call minpac#add('honza/vim-snippets')
call minpac#add('kana/vim-textobj-user')
call minpac#add('kana/vim-textobj-entire')
call minpac#add('thinca/vim-textobj-between')
call minpac#add('nelstrom/vim-textobj-rubyblock')
call minpac#add('kchmck/vim-coffee-script')
call minpac#add('Valloric/ListToggle')
call minpac#add('kshenoy/vim-signature')
call minpac#add('avakhov/vim-yaml')
call minpac#add('vim-scripts/LargeFile')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-eunuch')
call minpac#add('tpope/vim-vinegar')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-abolish')
call minpac#add('bronson/vim-trailing-whitespace')
call minpac#add('thoughtbot/vim-rspec')
call minpac#add('vim-airline/vim-airline')
call minpac#add('nelstrom/vim-visual-star-search')
call minpac#add('tpope/vim-obsession')
call minpac#add('schickling/vim-bufonly')
call minpac#add('skywind3000/asyncrun.vim')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('farmergreg/vim-lastplace')
call minpac#add('terryma/vim-smooth-scroll')
call minpac#add('gregsexton/gitv', {'on': ['Gitv']})
call minpac#add('chr4/nginx.vim')
call minpac#add('tmux-plugins/vim-tmux-focus-events')
call minpac#add('chrisbra/NrrwRgn')
call minpac#add('pbrisbin/vim-mkdir')
call minpac#add('terryma/vim-multiple-cursors')
call minpac#add('alvan/vim-closetag')
call minpac#add('yggdroot/indentline')
call minpac#add('andrewradev/splitjoin.vim')
call minpac#add('jreybert/vimagit')
call minpac#add('mattn/webapi-vim')
call minpac#add('mattn/gist-vim')
call minpac#add('mhinz/vim-grepper')
call minpac#add('szw/vim-maximizer')
call minpac#add('mhinz/vim-startify')
call minpac#add('iamcco/markdown-preview.vim')
" call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('haya14busa/incsearch.vim')
call minpac#add('haya14busa/incsearch-fuzzy.vim')
call minpac#add('easymotion/vim-easymotion')
call minpac#add('blueyed/vim-diminactive')

nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>

map z/ <Plug>(incsearch-fuzzy-/)

let g:diminactive_use_colorcolumn = 1
let g:diminactive_use_syntax = 0
let g:diminactive_enable_focus = 1
let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help']
let g:diminactive_filetype_blacklist = ['startify', 'qf']

let g:indentLine_setColors = 0
" let g:indentLine_bgcolor_term = 18
" let g:indentLine_color_term = 18
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
augroup IndentLinesDim
  autocmd!
  autocmd WinLeave * :IndentLinesDisable
  autocmd WinEnter * :IndentLinesEnable
augroup END

let g:mkdp_auto_close = 0

" set completefunc=syntaxcomplete#Complete
let g:deoplete#enable_at_startup = 1

" ListToggle settings
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10

let g:AutoPairsFlyMode = 0
" let g:AutoPairsShortcutBackInsert = '<leader>b'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetsDir = "~/.vim/snips"
let g:UltiSnipsSnippetDirectories = ["snips"]
let g:UltiSnipsEditSplit="vertical"

" set leader key
let mapleader = ','
let maplocalleader = '\'

" tmux navigation
let g:tmux_navigator_disable_when_zoomed = 1

set backspace=indent,eol,start
set number " show line numbers
set relativenumber
set hidden
" set timeoutlen=500 " wait (default 1000) milliseconds while nnoremap
" Treat .arb files as ruby
autocmd BufNewFile,BufRead *.html.arb setfiletype ruby

" set synmaxcol=500 " to not stuck vim while checking syntax of long lines

" identation
set autoindent
set shiftround
augroup indentation
  autocmd!
  " defaults
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab
  autocmd Filetype vim setlocal sw=2 ts=2 expandtab
  autocmd Filetype ruby setlocal sw=2 ts=2 expandtab
  autocmd Filetype eruby setlocal sw=2 ts=2 expandtab
  autocmd Filetype html setlocal sw=2 ts=2 expandtab
  autocmd Filetype javascript setlocal sw=4 ts=4 sts=0 expandtab
  autocmd Filetype coffeescript setlocal sw=4 ts=4 sts=0 expandtab
  autocmd Filetype python setlocal sw=2 ts=8 expandtab
augroup END

nnoremap K :h <C-R>=expand('<cword>')<CR><CR>

if executable('ag')
  let g:gitgutter_grep = 'ag'
endif

let g:closetag_filenames = '*.html,*.html.erb'

" reload buffer when file has changed on disk
set autoread

set tagbsearch

" enable per-directory .vimrc files supporting
set exrc
set secure

" natural splits
set splitbelow
set splitright

" FOLDING
set foldmethod=syntax
set foldlevel=99

set updatetime=100 " default is about 4000 miliseconds

set noswapfile " disable creation of swap files
" set directory^=$HOME/.vim/tmp//

set list
set listchars=tab:▸\ ,eol:¬,trail:-,nbsp:+

set incsearch
set hlsearch
set ignorecase
set smartcase
set scrolloff=5
set shortmess=atI
set clipboard+=unnamedplus

nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

cnoremap <c-n> <right>
cnoremap <c-p> <left>

nnoremap <C-t> :split <BAR> terminal<CR>
" nnoremap <C-S-t> :vsplit <BAR> terminal<CR>

" keep last commands in history (default 20)
set history=1000

" find overall project
set path+=**

set formatoptions+=j
set colorcolumn=81

set completeopt+=longest

" CtrlP settings
set runtimepath^=~/.vim/plugged/ctrlp.vim
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g "" -U --path-to-ignore ~/.ignore'
  let g:ctrlp_use_caching = 0
endif
if executable('/usr/local/bin/rg')
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif
nnoremap <C-Space> :CtrlPBuffer<CR>

let base16colorspace=256
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
else
  colorscheme base16-default-dark
endif

" ale, linting
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 0
let g:ale_javascript_jshint_executable = '/usr/local/bin/jshint'
let g:ale_set_highlights = 0 " no highlighting for ale warns

" Ruby IntelliSense like autocomplete
" no sense with vim compiled without ruby
" :h ft-ruby-omni
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" let ruby_no_expensive=1 " make vim faster but disable syntax folding
let ruby_spellcheck_strings = 1
let ruby_space_errors = 1
let ruby_operators = 1
let ruby_fold = 1

" netrw configuration
let g:netrw_liststyle = 0
let g:netrw_fastbrowse = 0
" enable numbers in netrw
let g:netrw_bufsettings = 'nomodifiable nomodified number nowrap readonly nobuflisted'

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --column\ --vimgrep\ --case-sensitive\ --path-to-ignore\ ~/.ignore
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
if executable('/usr/local/bin/rg')
  set grepprg=rg\ --color=never\ --vimgrep
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set wildmenu
set wildmode=list:longest " bash specific
" set wildignore=log/**,node_modules/**,tmp/**

" do not redraw every macros step
set lazyredraw
set inccommand=nosplit
autocmd FileType * setlocal formatoptions-=o

augroup qfpref
  autocmd!
  autocmd FileType qf set nolist
  autocmd FileType qf nnoremap <buffer> <C-v> <C-w><CR><C-w>L:cclose<CR>
  autocmd FileType qf nnoremap <buffer> <C-x> <C-w><CR>:cclose<CR>
  autocmd FileType qf nnoremap <buffer> <C-t> <C-w><CR>:cclose<CR><C-w>T
  autocmd FileType qf setlocal norelativenumber
  autocmd FileType qf setlocal colorcolumn=
augroup END

augroup gitcommitpref
  autocmd!
  autocmd FileType gitcommit setlocal colorcolumn=51,73
  autocmd Filetype gitcommit setlocal spell textwidth=72
  " autocmd FileType gitcommit nmap <buffer> <silent> <leader>r <leader>gr
  " autocmd FileType gitcommit nmap <buffer> <silent> <leader>p <leader>gp
  " autocmd FileType gitcommit nnoremap <buffer> <C-v> <C-m>
augroup END

set spellfile=$HOME/.vim/spell/en.utf-8.add

" Typos
command! -bang W w<bang>
command! -bang Q q<bang>
command! -bang Qa qa<bang>
command! -bang Wq wq<bang>

nnoremap Y y$

" redefine in per project vimrc
let g:push_remote = 'origin'
let g:pull_remote = 'upstream'
let g:pull_remote_branch = 'master'

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>vv :vsplit $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>
nnoremap <Leader>tv :tabedit $MYVIMRC<CR>

nnoremap <leader>gp :Gpush <C-R>=g:push_remote<CR> <C-R>=fugitive#head(7)<CR> --force-with-lease
nnoremap <leader>gr :Gpull <C-R>=g:pull_remote<CR> <C-R>=g:pull_remote_branch<CR> --rebase --autostash
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gc :Git rebase --continue
nnoremap <leader>gh :Git stash
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gv :Gitv<CR>
" nnoremap <C-w>F <C-w>f<C-w>L
nnoremap <C-b>o :Bonly<CR>
" map g<C-p> :CtrlP<CR><C-\>w
nnoremap <nowait> <leader>w :<C-u>write<CR>
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

nnoremap <localleader>rr :AsyncRun rails db:test:prepare<CR>
nnoremap <localleader>ss :AsyncRun spring stop<CR>
nnoremap <localleader>cc :AsyncRun ctags . $(bundle list --paths)<CR>

" spring detection
function! RSpecCmd() abort
  if filereadable('bin/rspec')
    return 'Dispatch bin/rspec {spec} --fail-fast'
  else
    return 'Dispatch rspec {spec} --fail-fast'
  endif
endfunction
let g:rspec_command = RSpecCmd()
" RSpec.vim mappings
nnoremap <silent> <leader>R :call RunCurrentSpecFile()<CR>
nnoremap <silent> <leader>r :call RunNearestSpec()<CR>
nnoremap <silent> <leader>t :call RunLastSpec()<CR>

" nnoremap <leader>g :Grepper -tool ag -noopen<cr>
nnoremap <leader>g :grep! ""<left>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

let g:grepper               = {}
let g:grepper.tools         = ['ag', 'git']
let g:grepper.highlight     = 1
let g:grepper.quickfix      = 1
let g:grepper.ag = {
      \   'grepprg':    &grepprg,
      \   'grepformat': &grepformat,
      \   'escape':     '\^$.*+?()[]{}|'
      \ }

" manage sessions
nnoremap <leader>ss :Obsession<CR>
nnoremap <leader>st :Obsession!<CR>

" allow to undo even after closing vim
set undofile
set undodir=~/.vim/undodir

let g:lasttab = 1
nmap <leader>tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

let g:maximizer_set_default_mapping = 0
nnoremap <silent> <C-w>m :MaximizerToggle<CR>
vnoremap <silent> <C-w>m :MaximizerToggle<CR>gv

nnoremap <leader><leader> :b#<CR>

let g:EasyMotion_do_mapping = 0
nmap <leader>f <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1

" autofixes
iab bb byebug

" paste aligned
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

autocmd FileType eruby.yaml setlocal commentstring=#\ %s

" use edit +70 filepath instead
function! EditLine(path_with_line, edit_cmd)
  let l:parts = split(a:path_with_line, ':')
  let l:file_path = get(parts, 0, 0)
  let l:line_num = get(parts, 1, 0)
  let l:col_num = get(parts, 2, 0)
  if filereadable(l:file_path)
    execute a:edit_cmd . ' ' . l:file_path
    call cursor(l:line_num, l:col_num)
  else
    echohl ErrorMsg | echo 'Warning: the file ' . l:file_path . ' is not readable!' | echohl None
    " beep
    execute "normal \<Esc>"
  endif
endfunction
command! -nargs=1 -complete=file E call EditLine(<q-args>, 'edit')
command! -nargs=1 -complete=file EV call EditLine(<q-args>, 'vsplit')
command! -nargs=1 -complete=file ES call EditLine(<q-args>, 'split')
command! -nargs=1 -complete=file ET call EditLine(<q-args>, 'tabedit')
command! -nargs=0 SourceTree AsyncRun /Applications/SourceTree.app/Contents/MacOS/Sourcetree ./
