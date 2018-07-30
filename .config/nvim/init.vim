let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ruby_host_prog = 'rvm system do neovim-ruby-host'

set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-unimpaired'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale' " async linter
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'fishbullet/deoplete-ruby'
Plug 'SirVer/ultisnips' " snippets supporting
Plug 'honza/vim-snippets' " snippets collection
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'thinca/vim-textobj-between'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kchmck/vim-coffee-script'
Plug 'Valloric/ListToggle'
Plug 'kshenoy/vim-signature' " Plugin to toggle, display and navigate marks
Plug 'avakhov/vim-yaml'
Plug 'vim-scripts/LargeFile'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch' " Vim sugar for the UNIX shell commands that need it the most
Plug 'tpope/vim-vinegar' " improved netrw
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'bronson/vim-trailing-whitespace'
Plug 'thoughtbot/vim-rspec'
Plug 'vim-airline/vim-airline'
Plug 'nelstrom/vim-visual-star-search'
" Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-obsession'
Plug 'schickling/vim-bufonly'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'farmergreg/vim-lastplace'
Plug 'terryma/vim-smooth-scroll'
" Plug 'scrooloose/nerdtree'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'chr4/nginx.vim' " nginx config highlighting
Plug 'tmux-plugins/vim-tmux-focus-events' " Make terminal vim and tmux work better together
Plug 'chrisbra/NrrwRgn'
Plug 'pbrisbin/vim-mkdir'
Plug 'terryma/vim-multiple-cursors'
Plug 'alvan/vim-closetag'
Plug 'yggdroot/indentline'
Plug 'andrewradev/splitjoin.vim'
Plug 'jreybert/vimagit'
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
call plug#end()

nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" map <C-n> :NERDTreeToggle<CR>

" let g:indentLine_setColors = 0

set completefunc=syntaxcomplete#Complete
let g:deoplete#enable_at_startup = 1

" ListToggle settings
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10

let g:AutoPairsFlyMode = 0

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

set synmaxcol=500 " to not stuck vim while checking syntax of long lines

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

let g:gitgutter_async = 1
let g:gitgutter_terminal_reports_focus=0

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

" add additional tags files
set tags+=gems.tags

" FOLDING
set foldmethod=syntax
set foldlevel=99

" set updatetime=100 " default is about 4000 miliseconds

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
  set grepprg=ag\ --nogroup\ --nocolor\ --column\ --vimgrep\ --ignore=TAGS\ --case-sensitive
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

set wildmenu
set wildmode=list:longest " bash specific
" set wildignore=log/**,node_modules/**,tmp/**

" use old regex engine to speedup ruby syntax highlighting
" 2 nfa (new one but slow with ruby ft)
" 1 old (faster with ruby)
" 0 auto
" set regexpengine=1

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
map g<C-p> :CtrlP<CR><C-\>w
nnoremap <nowait> <leader>w :<C-u>write<CR>
nnoremap <nowait> <leader>u :<C-u>PlugUpdate<CR>

let s:rails_version = ''
function! RailsVersion() abort
  if filereadable('bin/rails')
    if s:rails_version == ''
      let cmd_result = system("bin/rails --version")
      let s:rails_version = join(split(split(cmd_result)[1], "\\.")[0:1], ".")
    endif
    return s:rails_version
  else
    echohl ErrorMsg | echo 'No rails detected!' | echohl None
  endif
endfunction

function! DbTestPrepareCmd() abort
  if RailsVersion() == '4.2'
    return "rake db:test:prepare"
  else
    return "rails db:test:prepare"
  endif
endfunction

nnoremap <localleader>rr :AsyncRun <C-R>=DbTestPrepareCmd()<CR><CR>
nnoremap <localleader>ss :AsyncRun spring stop<CR>
nnoremap <localleader>cc :AsyncRun ctags . $(bundle list --paths)<CR>

let g:rspec_dispatch = 1
" spring detection
function! RSpecCmd() abort
  if filereadable('bin/rspec')
    return '!bin/rspec {spec} --fail-fast'
  else
    return '!rspec {spec} --fail-fast'
  endif
endfunction
function! RSpecDispatchCmd() abort
  if g:rspec_dispatch
    return 'Dispatch ' . substitute(RSpecCmd(), '^!', '', '')
  else
    return RSpecCmd()
  endif
endfunction
function! ReloadRSpecCmd() abort
  let g:rspec_command = RSpecDispatchCmd()
endfunction
call ReloadRSpecCmd() " initialize rspec cmd
function! ToggleRspecDispatch() abort
  let g:rspec_dispatch = 1 - g:rspec_dispatch
  echo g:rspec_dispatch
endfunction
" RSpec.vim mappings
nnoremap <silent> <leader>R :call ReloadRSpecCmd() <BAR> call RunCurrentSpecFile()<CR>
nnoremap <silent> <leader>r :call ReloadRSpecCmd() <BAR> call RunNearestSpec()<CR>
nnoremap <silent> <leader>t :call ReloadRSpecCmd() <BAR> call RunLastSpec()<CR>
nnoremap <silent> <leader>e :call ToggleRspecDispatch()<CR>

" Grepper preferences
" nnoremap <leader>g :Grepper -tool ag<cr>
" nnoremap <leader>* :Grepper -tool ag -cword<cr>
nnoremap <leader>g :grep!<Space>""<left>
nnoremap <leader>* :grep!<Space><C-R>=expand('<cword>')<CR><CR>
" vnoremap <leader>* :grep!<Space><C-R>=expand('<cword>')<CR><CR>

" nmap gs <plug>(GrepperOperator)
" xmap gs <plug>(GrepperOperator)

" manage sessions
nnoremap <leader>ss :Obsession<CR>
nnoremap <leader>st :Obsession!<CR>

" allow to undo even after closing vim
set undofile
set undodir=~/.vim/undodir

let g:lasttab = 1
nmap <leader>tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

let s:min_max_toggle = 0
function! MinMaxWindowToggle()
  if &ft =~ 'qf\|gitcommit'
    echoerr 'Maximization not supporting!'
    return
  endif
  if s:min_max_toggle
    execute "wincmd ="
    let s:min_max_toggle = 0
  else
    execute "wincmd |"
    execute "wincmd _"
    let s:min_max_toggle = 1
  endif
endfunction
nnoremap <C-w>m :call MinMaxWindowToggle()<CR>

nnoremap <leader><leader> :b#<CR>

" autofixes
iab bb byebug
iab vpdd VPDD

" paste aligned
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

let g:asyncrun_status = "stopped"
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

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

function! ResolveIssue() abort
  system("worktree resolve_issue " . getcwd())
endfunction

set clipboard+=unnamedplus
