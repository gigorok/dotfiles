let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ruby_host_prog = 'rvm 2.5.1@neovim do neovim-ruby-host'

call plug#begin()
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-dispatch'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'chriskempson/base16-vim'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'thinca/vim-textobj-between'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kchmck/vim-coffee-script'
Plug 'Valloric/ListToggle'
Plug 'kshenoy/vim-signature'
Plug 'avakhov/vim-yaml'
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'nelstrom/vim-visual-star-search'
Plug 'schickling/vim-bufonly'
Plug 'skywind3000/asyncrun.vim'
Plug 'radenling/vim-dispatch-neovim'
Plug 'farmergreg/vim-lastplace'
Plug 'chr4/nginx.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'pbrisbin/vim-mkdir'
Plug 'terryma/vim-multiple-cursors'
Plug 'alvan/vim-closetag'
Plug 'yggdroot/indentline'
Plug 'mhinz/vim-grepper'
Plug 'szw/vim-maximizer'
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
Plug 'blueyed/vim-diminactive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'gigorok/complete-registers'
Plug '907th/vim-auto-save'

" php stuff
Plug 'StanAngeloff/php.vim'
Plug 'rayburgemeestre/phpfolding.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'tobyS/vmustache'
Plug 'tobyS/pdv'
" php stuff

Plug 'vim-vdebug/vdebug'
Plug 'janko-m/vim-test'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'editorconfig/editorconfig-vim'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:gitgutter_terminal_reports_focus = 0

let g:auto_save = 1
let g:auto_save_silent = 1
augroup ft_auto_save
  au!
  au FileType gitcommit let b:auto_save = 0
augroup END

let g:diminactive_use_colorcolumn = 1
let g:diminactive_use_syntax = 0
let g:diminactive_enable_focus = 1
let g:diminactive_buftype_blacklist = ['nofile', 'nowrite', 'acwrite', 'quickfix', 'help']
let g:diminactive_filetype_blacklist = ['startify', 'qf']

let g:indentLine_setColors = 1
let g:indentLine_color_term = 18
let g:indentLine_setConceal = 0
augroup IndentLinesDim
  autocmd!
  autocmd WinLeave,FocusLost * :IndentLinesDisable
  autocmd WinEnter,FocusGained * :IndentLinesEnable
augroup END
set conceallevel=2 concealcursor=inc
augroup JSON_conceal
  autocmd!
  autocmd Filetype json,startify setlocal conceallevel=0
augroup END

let g:mkdp_auto_close = 0

augroup SetDictionary
  autocmd!
  autocmd BufNewFile,BufRead */db/migrate/*.rb setlocal dictionary=$HOME/.vim/dict/rails/migrate.txt
augroup END

" ListToggle settings
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10

let g:AutoPairsFlyMode = 0

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips', 'UltiSnips']
let g:UltiSnipsEditSplit="tabdo"

" set leader key
let mapleader = ','
let maplocalleader = '\'

" tmux navigation
let g:tmux_navigator_disable_when_zoomed = 1

set number
set relativenumber
set hidden

augroup setFileType
  autocmd!
  autocmd BufNewFile,BufRead *.html.arb setfiletype ruby
  autocmd BufNewFile,BufRead *.yml.distr setfiletype eruby.yaml
  autocmd BufNewFile,BufRead *.yml.dist setfiletype eruby.yaml
augroup END

set synmaxcol=500 " to not stuck vim while checking syntax of long lines

nnoremap K :h <C-R>=expand('<cword>')<CR><CR>

let g:closetag_filenames = '*.html,*.html.erb'

" enable per-directory .vimrc files supporting
set exrc
set secure

" natural splits
set splitbelow
set splitright

" FOLDING
set foldmethod=syntax
set foldlevel=99
augroup setFoldMethod
  autocmd!
  autocmd FileType html setlocal foldmethod=indent
augroup END

set updatetime=100 " default is about 4000 miliseconds

set noswapfile " disable creation of swap files
" set directory^=$HOME/.vim/tmp//

set list
set listchars=tab:▸\ ,eol:¬,trail:-

set ignorecase
set smartcase
set scrolloff=5
set clipboard=unnamedplus,unnamed

nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

cnoremap <C-n> <right>
cnoremap <C-p> <left>
cnoremap <C-a> <home>
cnoremap <C-e> <end>

" find overall project
set path+=**

" set colorcolumn=81
let g:EditorConfig_max_line_indicator = 'line'
let g:EditorConfig_preserve_formatoptions = 1

set completeopt=menu,menuone,longest

nnoremap <C-Space> :Buffers<CR>
if executable('ag')
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g "" --path-to-ignore=$HOME/.ignore'
endif

let base16colorspace=256
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
else
  colorscheme base16-solarized-dark
endif

" ale, linting
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 0
let g:ale_set_highlights = 0 " no highlighting for ale warns
let g:ale_fixers = {
      \ 'ruby': ['rubocop']
      \ }
augroup aleRb
  autocmd!
  autocmd FileType ruby nnoremap <nowait> <buffer> af <Cmd>ALEFix<CR>
augroup END

set noshowmode

" netrw configuration
let g:netrw_liststyle = 0
let g:netrw_fastbrowse = 0
" enable numbers in netrw
let g:netrw_bufsettings = 'nomodifiable nomodified number nowrap readonly nobuflisted'

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --column\ --hidden\ --path-to-ignore=$HOME/.ignore
endif

set wildmode=longest,list,full " bash specific

" do not redraw every macros step
set lazyredraw
set inccommand=nosplit

augroup setFmtOpt
  autocmd!
  " remove autocomment when o pressed
  autocmd FileType * setlocal formatoptions-=o
augroup END

augroup qfpref
  autocmd!
  autocmd FileType qf set nolist
  autocmd FileType qf nnoremap <buffer> <C-v> <C-w><CR><C-w>L:cclose<CR>
  autocmd FileType qf nnoremap <buffer> <C-x> <C-w><CR>:cclose<CR>
  autocmd FileType qf nnoremap <buffer> <C-t> <C-w><CR>:cclose<CR><C-w>T
  autocmd FileType qf setlocal norelativenumber
  autocmd FileType qf setlocal colorcolumn=
  autocmd FileType qf nnoremap <buffer> q <Cmd>cclose<CR>
augroup END

augroup gitpref
  autocmd!
  autocmd FileType git nnoremap <buffer> q <Cmd>q<CR>
augroup END

augroup gitcommitpref
  autocmd!
  autocmd FileType gitcommit setlocal colorcolumn=51,73
  autocmd FileType gitcommit setlocal spell textwidth=72
augroup END

" Typos
command! -bang W w<bang>
command! -bang Q q<bang>
command! -bang Qa qa<bang>
command! -bang Wq wq<bang>

nnoremap Y y$

nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>vv :vsplit $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>
nnoremap <Leader>tv :tabedit $MYVIMRC<CR>

" redefine in per project vimrc
let g:push_remote = 'origin'
let g:pull_remote = 'upstream'
let g:pull_remote_branch = 'master'

nnoremap <leader>gp :Gpush <C-R>=g:push_remote<CR> <C-R>=fugitive#head(7)<CR> --force-with-lease
nnoremap <leader>gr :Gpull <C-R>=g:pull_remote<CR> <C-R>=g:pull_remote_branch<CR> --rebase --autostash
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gc :Git rebase --continue
nnoremap <leader>gh :Git stash
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <C-b>o :Bonly<CR>
nnoremap <nowait> <leader>w <Cmd>write<CR>

nnoremap <localleader>rr :AsyncRun bundle exec rails db:test:prepare<CR>
nnoremap <localleader>ss :AsyncRun spring stop<CR>
nnoremap <localleader>cc :RTags<CR>
command! -nargs=0 RTags AsyncRun ctags . $(bundle list --paths)

nnoremap <silent> <leader>R :TestFile<CR>
nnoremap <silent> <leader>r :TestNearest<CR>
nnoremap <silent> <leader>t :TestLast<CR>

nnoremap <leader>g <Cmd>Grepper<CR>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

let g:grepper               = {}
let g:grepper.tools         = ['ag', 'git']
let g:grepper.highlight     = 1
let g:grepper.quickfix      = 1
let g:grepper.switch        = 0
let g:grepper.prompt_quote  = 1
let g:grepper.ag            = {
      \ 'grepprg': &grepprg
      \ }

set completefunc=CompleteRegisters

" manage sessions
nnoremap <leader>ss :Obsession<CR>
nnoremap <leader>st :Obsession!<CR>

" allow to undo even after closing vim
set undofile

let g:lasttab = 1
nmap <leader>tt :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

let g:maximizer_set_default_mapping = 0
nnoremap <silent> <C-w>m :MaximizerToggle<CR>
vnoremap <silent> <C-w>m :MaximizerToggle<CR>gv

let g:EasyMotion_do_mapping = 0
nmap <leader>f <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1

" autofixes
iabbrev bb byebug

" paste aligned
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

augroup setCommentstring
  autocmd!
  autocmd FileType eruby.yaml setlocal commentstring=#\ %s
  autocmd FileType php setlocal commentstring=//\ %s
augroup END

onoremap aP <Cmd>execute "normal! vipOk"<cr>

command! -nargs=1 -complete=file Dup write <args> | split <args>
command! -nargs=0 SourceTree AsyncRun /Applications/SourceTree.app/Contents/MacOS/Sourcetree ./
nnoremap <leader>u <Cmd>PlugUpdate<CR>
command! -nargs=? -complete=file Annotate AsyncRun bundle exec annotate <args>
command! -nargs=0 Migrate AsyncRun bundle exec rails db:migrate
command! -nargs=0 Cowsay !fortune | cowsay
command! -nargs=0 FormatJson %!python -m json.tool

let g:php_var_selector_is_identifier = 1

let g:fugitive_gitlab_domains = ['https://git.in.didww.com']
let g:gitlab_api_keys = {'git.in.didww.com': 'Vrw-9B4P7hRTiPDyzHZf'}

let g:php_cli_executable = '/usr/local/Cellar/php@7.1/7.1.25/bin/php'
augroup PHP_autocmd
  autocmd!
  autocmd BufNewFile,BufRead *.php nnoremap <buffer> <leader>X :<C-U>AsyncRun <C-R>=g:php_cli_executable<CR> %<CR>
  autocmd FileType php nnoremap <buffer> <leader>d :call pdv#DocumentCurrentLine()<CR>
augroup END

let g:dispatch_no_maps = 1

let test#strategy = "dispatch"
let test#php#phpunit#executable = g:php_cli_executable . ' ./vendor/bin/phpunit'
let test#ruby#rspec#options = '--fail-fast'

let g:asyncrun_open = 15

let $XDEBUG_CONFIG="idekey=xdebug"
let g:vdebug_options = {
      \ 'ide_key': 'xdebug',
      \ 'break_on_open': 0,
      \ 'watch_window_style': 'compact'
      \ }
let g:pdv_template_dir = $HOME . "/.config/nvim/plugged/pdv/templates"

let g:startify_files_number = 8
let g:startify_bookmarks = [
      \ { 'v': '~/.config/nvim/init.vim' },
      \ { 'G': 'Gemfile' },
      \ { 'd': 'config/database.yml' },
      \ ]

" " LC settings
" let g:LanguageClient_serverCommands = {
"       \ 'ruby': ['solargraph', 'stdio']
"       \ }
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_autoStop = 1
" " let g:LanguageClient_loggingFile = '/Users/igor.gonchar/lc_client.log'
" " let g:LanguageClient_serverStderr = '/Users/igor.gonchar/lc_server.log'
" " let g:LanguageClient_loggingLevel = 'DEBUG'
" nnoremap <leader><leader> <Cmd>b#<CR>
" nnoremap <leader>cm <Cmd>call LanguageClient_contextMenu()<CR>
" nnoremap <silent> gd <Cmd>call LanguageClient#textDocument_definition()<CR>
" " nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" " nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" " autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

" deoplete insert giberrish, look as FAQ
func! Multiple_cursors_before()
  if deoplete#is_enabled()
    call deoplete#disable()
    let g:deoplete_is_enable_before_multi_cursors = 1
  else
    let g:deoplete_is_enable_before_multi_cursors = 0
  endif
endfunc
func! Multiple_cursors_after()
  if g:deoplete_is_enable_before_multi_cursors
    call deoplete#enable()
  endif
endfunc
