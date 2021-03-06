scriptencoding utf-8

let mapleader=' '

colorscheme schemer
" colorscheme highlite

call mkdir($HOME.'/.local/share/nvim/backup/', 'p')

call backpack#init()

nnoremap cl 0D
nnoremap Y y$
nnoremap ' `
nnoremap <A-l> 2zl
nnoremap <A-h> 2zh
nnoremap <silent> g8 :norm! *N<CR>
nnoremap <left> gT
nnoremap <right> gt
nnoremap <Backspace> <C-^>
nnoremap          g> :set nomore<bar>echo repeat("\n",&cmdheight)<bar>10messages<bar>set more<CR>
nnoremap          <C-s>     :<C-U>%s/\C\<<C-r><C-w>\>/
nnoremap <silent> <C-p>     :Files<CR>
nmap              <leader>e :e %%
nnoremap <silent> <leader>a :argadd %<CR>
nnoremap <silent> <leader>d :argdelete %<CR>
nnoremap <silent> <Leader>= :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>
nnoremap <silent> <Leader>- :echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "name")<CR>
nnoremap <silent> <Leader>h :Helptags<CR>
nnoremap <silent> <Leader>n :nohls<CR>
nnoremap <silent> <Leader>* :lgrep <cword><CR>
nnoremap <silent> <leader>m :mks!<CR>
nnoremap <silent> <leader>r :redraw!<CR>
nnoremap <silent> <leader>s :.!sh<CR>
xnoremap <silent> <leader>s :!sh<CR>
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]

" nnoremap <silent> <leader>t    :tabnew<CR>
nnoremap          <leader>1 1gt
nnoremap          <leader>2 2gt
nnoremap          <leader>3 3gt
nnoremap          <leader>4 4gt
nnoremap          <leader>5 5gt

nnoremap <silent> [a :previous<CR>
nnoremap <silent> ]a :next<CR>
nnoremap <silent> [A :first<CR>
nnoremap <silent> ]A :last<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nnoremap <silent> [l :lprevious<CR>
nnoremap <silent> ]l :lnext<CR>
nnoremap <silent> [L :lfirst<CR>
nnoremap <silent> ]L :llast<CR>

nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [Q :cfirst<CR>
nnoremap <silent> ]Q :clast<CR>

nnoremap <silent> ]t :tnext<CR>
nnoremap <silent> [t :tprevious<CR>
nnoremap <silent> ]T :tlast<CR>
nnoremap <silent> [T :tfirst<CR>

nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h

onoremap <silent> A :<C-u>normal! ggVG<CR>

vnoremap <C-g> "*y
vnoremap gn :norma 

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <expr> qq 'q!'

inoremap jk <Esc>
inoremap kj <Esc>
inoremap JK <Esc>
inoremap KJ <Esc>
inoremap Jk <Esc>
inoremap Kj <Esc>

tnoremap <Esc> <C-\><C-n>
tmap <expr> gt '<C-\><C-n>gt'

if isdirectory('/usr/local/opt/fzf')
    set runtimepath+=/usr/local/opt/fzf
endif

set inccommand=nosplit " Show substitute command live
set cursorline " Changes colour of row that cursor is on
set ignorecase " Need this on for smartcase to work
set smartcase " Match lowercase to all, but only match upper case to upper case
if has('vim_starting') " fixes bugs caused by vim-sourcerer
    set nonumber " Show current line number on left
    set norelativenumber " Show relative line numbers on left for jk jumping
endif
set numberwidth=3 " Give the left bar of line numbers 4 cols to use
set updatetime=250 " I use this used for CursorHold autocmd for deoplete
set noshowcmd " Don't show the current cmd in bottom right
set iskeyword+=- " Add hyphen to be a keyword, bad for racket and python
set hidden " Absolutely necessary. Allows hidden buffers
set nolist " Needed for listchars, kinda shit to have on always IMO, toggle with <Leader>l
set listchars=tab:-,eol:¬,extends:>,precedes:< " Just some niceties for set list
" set list
" set listchars=trail:\  " highlight trailing whitespace
set tabstop=4 " A tab is 4 spaces
set softtabstop=4 " Backspace 4 spaces at a time at start of line
set shiftround " Round shifts with << >> to shiftwidth
set shiftwidth=4 " Round shifts to multiples of 4 spaces
set expandtab " Spaces > tabs
set nowrap " Don't wrap the text, it's annoying
set mouse=a " Mouse support is nice for resizing splits
set sidescroll=10 " Scroll horizontally when 10 cols from edge
set scrolloff=1 " Scroll vertically when 1 rows from edge
set whichwrap=[,] " Allow arrow keys (d+h/j/k/l) to scroll to next line
set cmdheight=1 " Leave here in case I want to change it from default (1) in future
set splitright " Vsplit new window to the right
set noshowmode " Don't show current mode in bottom
set noruler " Don't show line info bottom right since I have a custom statusline
set showmatch " Jump cursor to '(' when inputting the closing ')'
set matchtime=5 " showmatch above operates for 50 millis
set spelllang=en_ca " Spell language for Canadian English
" set undofile " Persist undo after file closes
" set undolevels=1000         " How many undos
" set undoreload=10000        " number of lines to save for undo
" set shortmess+=cI " Don't show annoying completion messages
set shortmess+=Ic " Don't show intro msg (vim-illuminate messes it up anyway)
set nostartofline " Don't move cursor for ctrl-(d,u,f,b) - unsure about this
" set sessionoptions+=resize " Remember lines/cols when saving a session
set backup
" set nobackup
" set nowritebackup
set backupdir=~/.local/share/nvim/backup
" set pastetoggle=<F2> " Toggle paste from insert mode. Prefer "+p
set lazyredraw " don't redraw when executing a macro
set grepprg=rg\ --smart-case\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m
set cpoptions+=> " add newline when appending to registers
" set autowrite " auto write on :make and various other commands
set completeopt=menu " just use a pmenu to display completion
set nohlsearch " feels nicer off since used mainly for nav, yoh to toggle
set pumblend=10 " 10% transparency pmenu
set signcolumn=auto:3 " max 3 width sign column
set dictionary+=/usr/share/dict/words
set diffopt+=hiddenoff
set showtabline=2
set tabline=%!MakeTableLine()
set guicursor=a:block-Cursor " Show block cursor for these modes
set timeoutlen=250 " timeout used mainly for jk => <Esc>
set ttimeoutlen=-1
" set winblend=10 " transparency for floating windows
set equalalways
" set nowrapscan
" set virtualedit=block
" set shada=!,'100,<50,s10,h

augroup filetype_automcds
    autocmd!
    " autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType c,cpp,java setlocal commentstring=//\ %s " For vim commentary
    " autocmd FileType asm setlocal commentstring=;\ %s " For vim commentary
augroup END

augroup hide_qf_cursor
    autocmd!
    autocmd WinLeave * if &ft !~# 'qf' | setlocal nocursorline | endif
    autocmd WinEnter,BufEnter * if &ft !~# 'qf' | setlocal cursorline | endif
augroup END

augroup hl_trailing_whitespace
    autocmd!
    autocmd BufNew,BufEnter * try | call matchdelete(1254) | catch /E80[23]/ | endtry | call matchadd('CursorLine', '\v\s+$', 1, 1254)
augroup END

augroup term_autocmds
    autocmd!
    autocmd TermEnter * set nocursorline
    autocmd TermLeave * set cursorline
augroup END

augroup highlight_yank_autocmds
    autocmd!
    autocmd TextYankPost * silent lua require'vim.highlight'.on_yank({higroup='Substitute', timeout=200})
augroup END

augroup skel_autocmds
    autocmd!
    autocmd BufNewFile *.tex 0r!cat ~/.config/nvim/skeletons/latex.skel
augroup END

" TAG: plugins {{{

" TAG: config-firenvim
au BufEnter github.com_*.txt set filetype=markdown
augroup firenvim_autocmds
    autocmd!
    autocmd BufEnter localhost_lab*.txt, colab.research.google.com_*.txt set filetype=python
augroup END

let g:firenvim_config = {
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }

" TAG: config-treesitter

" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"     highlight = {
"         enable = true,                    -- false will disable the whole extension
"     },
"     incremental_selection = {
"         enable = true,
"         disable = { 'cpp', 'lua' },
"         keymaps = {                       -- mappings for incremental selection (visual mappings)
"           init_selection = 'gnn',         -- maps in normal mode to init the node/scope selection
"           node_incremental = "grn",       -- increment to the upper named parent
"           scope_incremental = "grc",      -- increment to the upper scope (as defined in locals.scm)
"           node_decremental = "grm",      -- decrement to the previous node
"         }
"     },
"     ensure_installed = 'all' -- one of 'all', 'language', or a list of languages
" }
" EOF

" TAG: config-eunuch
let g:Eunuch_find_executable = 'fd'

" fzf settings
fun! FloatingFZF2()
    let width = float2nr(&columns * 0.7)
    let height = float2nr(&lines * 0.5)
    let opts = {
                \     'relative': 'editor',
                \     'row': (&lines - height) / 5,
                \     'col': (&columns - width) / 2,
                \     'width': width,
                \     'height': height,
                \     'style': 'minimal'
                \ }

    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
endf

let g:fzf_layout = { 'window': 'call FloatingFZF2()' }
let g:fzf_history_dir = '~/.local/share/nvim/fzf-history'
let g:fzf_colors = {
            \ 'bg+': ['bg', 'Normal', 'Normal'],
            \ }
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" TAG: config-illuminate
" let g:Illuminate_ftwhitelist = ['todo']
" let g:Illuminate_ftblacklist = ['', 'qf', 'tex', 'fzf', 'text'] " TODO figure out why this doesn't work for my gt terminal
let g:Illuminate_ftHighlightGroups = {
            \ 'vim:blacklist': ['Statement', 'vimNotFunc', 'vimCommand', 'vimMapModKey'],
            \ 'ruby:blacklist': ['Statement', 'PreProc'],
            \ 'cpp:blacklist': ['cppSTLnamespace', 'Statement', 'Type'],
            \ 'go:blacklist': ['goVar', 'goComment', 'goRepeat', 'goConditional'],
            \ 'c:blacklist': ['Type', 'cRepeat'],
            \ 'rust:blacklist': ['Comment', 'rustConditional', 'rustKeyword']
            \ }
" augroup illuminate_augroup
"     autocmd!
"     autocmd VimEnter * hi illuminatedWord cterm=italic gui=italic | hi illuminatedCurWord cterm=bold gui=bold
" augroup END
" let g:Illuminate_insert_mode_highlight = 1

let g:netrw_banner = 0


" TAG: config-hexokinase
let g:Hexokinase_highlighters = ['foregroundfull']
let g:Hexokinase_palettes = [expand($HOME).'/.config/nvim/sample_palette.json']
let g:Hexokinase_checkBoundary = 1
" let g:Hexokinase_highlighters = ['virtual']
" let g:Hexokinase_highlighters = [ 'background', 'backgroundfull', 'virtual']

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\ ]

" let g:Hexokinase_refreshEvents = ['BufWrite', 'BufRead', 'TextChanged', 'InsertLeave']
" let g:Hexokinase_prioritizeHead = 0
" let g:Hexokinase_highlighters = ['sign_column']
" let g:Hexokinase_refreshEvents = ['TextChangedI', 'TextChanged']

" TAG: config-devilish
let g:Devilish_repoWhitelist = ['starscream', 'shopify']

" TAG: config-ale
let g:ale_completion_symbols = {
            \ 'text': '',
            \ 'method': '',
            \ 'function': '',
            \ 'constructor': '',
            \ 'field': '',
            \ 'variable': '',
            \ 'class': '',
            \ 'interface': '',
            \ 'module': '',
            \ 'property': '',
            \ 'unit': 'unit',
            \ 'value': 'val',
            \ 'enum': '',
            \ 'keyword': 'keyword',
            \ 'snippet': '',
            \ 'color': 'color',
            \ 'file': '',
            \ 'reference': 'ref',
            \ 'folder': '',
            \ 'enum member': '',
            \ 'constant': '',
            \ 'struct': '',
            \ 'event': 'event',
            \ 'operator': '',
            \ 'type_parameter': 'type param',
            \ '<default>': 'v'
            \ }
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> [W <Plug>(ale_first)
nmap <silent> ]W <Plug>(ale_last)
fun! s:alef() abort
    setl omnifunc=ale#completion#OmniFunc
    nnoremap <buffer> <silent> <c-]> :ALEGoToDefinition<CR>
    nnoremap <buffer> <silent> K :ALEHover<CR>
endf
augroup ale_autocmds
    autocmd!
    autocmd FileType go,rust,dart call s:alef()
augroup END
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
" let g:ale_disable_lsp = 0
let g:ale_set_loclist = 0
" let g:ale_python_autopep8_options = '--aggressive --ignore E226,E24,W50,E501,E731,W690,E721,E402,W605'
" let g:ale_python_pylint_options = '--rcfile=pylintrc'
let g:ale_linters = {
            \     'rust': ['rls'],
            \     'go': ['gopls'],
            \     'dart': ['analysis_server'],
            \     'markdown': [],
            \     'tex': [],
            \     'ruby': ['rubocop'],
            \     'javascript': [],
            \ }
            " \     'python': ['flake8', 'pylint', 'pyls'],
let g:ale_fixers = {
            \     'json': ['jq'],
            \     'rust': ['rustfmt'],
            \     'dart': ['dartfmt'],
            \     'go': ['gofmt'],
            \ }
            " \     'python': ['autopep8', 'isort'],

" TAG: config-vimtex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'skim'
let g:vimtex_quickfix_mode = 0

let g:matchup_matchparen_status_offscreen = 0
let g:matchup_matchparen_deferred = 50

" TAG: config-nvimlsp
" let g:diagnostic_insert_delay = 1
" lua require 'lsp_setup'
" augroup rrethy_nvim_lsp_autocmds
"     autocmd!
"     autocmd Filetype rust,go,python call s:nvim_lsp_mapping()
"     autocmd BufWrite *.rs,*.go lua vim.lsp.buf.formatting()
" augroup END
" fun s:nvim_lsp_mapping() abort
"     setlocal omnifunc=v:lua.vim.lsp.omnifunc
"     nnoremap <buffer> <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
"     nnoremap <buffer> <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
"     nnoremap <buffer> <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
"     nnoremap <buffer> <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
"     " nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
"     nnoremap <buffer> <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
"     nnoremap <buffer> <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
"     nnoremap <buffer> <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
"     nnoremap <buffer> <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" endfun
" }}}

" TAG: config-statusline
" statusline {{{
augroup statusline_autocmd
    autocmd!
    autocmd WinEnter,VimEnter,BufEnter * call s:fancy_active_statusline()
    autocmd WinLeave * call s:fancy_inactive_statusline()
augroup END

function! s:fancy_inactive_statusline() abort
    if exists('g:started_by_firenvim')
        setlocal statusline=%#SpySlNC#
        setlocal statusline+=\ 
        setlocal statusline+=%n
        setlocal statusline+=\ 
        setlocal statusline+=%#SpySlInvNC#
        setlocal statusline+=%#LeftPromptNC#
        setlocal statusline+=\ 
        setlocal statusline+=%y
        setlocal statusline+=\ 
        setlocal statusline+=%t
        setlocal statusline+=\ 
        setlocal statusline+=%r
        setlocal statusline+=%#LeftPromptInvNC#
        setlocal statusline+=%=
        setlocal statusline+=%#RightPromptInvNC#
        setlocal statusline+=%#RightPromptNC#
        setlocal statusline+=\ %20(%-9(ln%4l/%-4L%)\ %5(cn\ %-3c%)\ %-4(%3p%%%)%)
        setlocal statusline+=\ 
    else
        setlocal statusline=%#SpySlNC#
        setlocal statusline+=\ 
        setlocal statusline+=%n
        setlocal statusline+=\ 
        setlocal statusline+=%#SpySlInvNC#
        setlocal statusline+=
        setlocal statusline+=%#LeftPromptNC#
        setlocal statusline+=\ 
        setlocal statusline+=%y
        setlocal statusline+=\ 
        setlocal statusline+=%t
        setlocal statusline+=\ 
        setlocal statusline+=%r
        setlocal statusline+=%#LeftPromptInvNC#
        setlocal statusline+=
        setlocal statusline+=%=
        setlocal statusline+=%#RightPromptInvNC#
        setlocal statusline+=
        setlocal statusline+=%#RightPromptNC#
        setlocal statusline+=\ %20(%-9(%4l/%-4L%)\ %5(\ %-3c%)\ %-4(%3p%%%)%)
        setlocal statusline+=\ 
    endif
endfunction

fun! Ale_statusline_warnings() abort
    return ''
    " echom "hello"
    " if !exists('*ale#statusline#Count')
    "     return ''
    " endif
    " echom "world"
    let warnings = ale#statusline#Count(bufnr('%')).warning
    return warnings == 0 ? '' : printf(' %d ', warnings)
    " return ''
endf

fun! Ale_statusline_errors() abort
    return ''
    " if !exists('*ale#statusline#Count')
    "     return ''
    " endif
    let errors = ale#statusline#Count(bufnr('%')).error
    return errors == 0 ? '' : printf(' %d ', errors)
    " return ''
endf

fun! s:fancy_active_statusline() abort
    if exists('g:started_by_firenvim')
        setlocal statusline=%#SpySl#
        setlocal statusline+=\ 
        setlocal statusline+=%n
        setlocal statusline+=\ 
        setlocal statusline+=%#SpySlInv#
        setlocal statusline+=%#LeftPrompt#
        setlocal statusline+=\ 
        setlocal statusline+=%y
        setlocal statusline+=\ 
        " setlocal statusline+=%t
        setlocal statusline+=\ 
        setlocal statusline+=%r
        setlocal statusline+=%#LeftPromptInv#
        setlocal statusline+=%#AlePromptErrors#
        setlocal statusline+=%{Ale_statusline_errors()}
        setlocal statusline+=%#AlePromptErrorsInv#
        setlocal statusline+=%#AlePromptWarnings#
        setlocal statusline+=%{Ale_statusline_warnings()}
        setlocal statusline+=%#AlePromptWarningsInv#
        setlocal statusline+=%=
        setlocal statusline+=%#RightPromptInv#
        setlocal statusline+=%#RightPrompt#
        setlocal statusline+=\ %20(%-9(line:%4l/%-4L%)\ %5(col:\ %-3c%)\ %-4(%3p%%%)%)
        setlocal statusline+=\ 
    else
        setlocal statusline=%#SpySl#
        setlocal statusline+=\ 
        setlocal statusline+=%n
        setlocal statusline+=\ 
        setlocal statusline+=%#SpySlInv#
        setlocal statusline+=
        setlocal statusline+=%#LeftPrompt#
        setlocal statusline+=\ 
        setlocal statusline+=%y
        setlocal statusline+=\ 
        setlocal statusline+=%t
        setlocal statusline+=\ 
        setlocal statusline+=%r
        setlocal statusline+=%#LeftPromptInv#
        setlocal statusline+=
        " setlocal statusline+=%#GitPrompt#
        " setlocal statusline+=\ 
        " setlocal statusline+=%{FugitiveStatusline()}
        " setlocal statusline+=\ 
        " setlocal statusline+=%{ObsessionStatus()}
        " setlocal statusline+=\ 
        " setlocal statusline+=%#GitPromptInv#
        " setlocal statusline+=
        setlocal statusline+=%#AlePromptErrors#
        setlocal statusline+=%{Ale_statusline_errors()}
        setlocal statusline+=%#AlePromptErrorsInv#
        setlocal statusline+=
        setlocal statusline+=%#AlePromptWarnings#
        setlocal statusline+=%{Ale_statusline_warnings()}
        setlocal statusline+=%#AlePromptWarningsInv#
        setlocal statusline+=
        setlocal statusline+=%=
        setlocal statusline+=%#RightPromptInv#
        setlocal statusline+=
        setlocal statusline+=%#RightPrompt#
        setlocal statusline+=\ %20(%-9(%4l/%-4L%)\ %5(\ %-3c%)\ %-4(%3p%%%)%)
        setlocal statusline+=\ 
    endif
endf
"}}}

" TAG: config-test
nnoremap <silent> <leader>t :TestNearest<CR>
nnoremap <silent> <leader>T :TestFile<CR>
nnoremap <silent> <leader>g :TestVisit<CR>
nnoremap <silent> <leader>l :TestLast<CR>
" nnoremap <silent> <leader>a :TestSuite<CR>
let g:test#strategy = 'neovim'


" TAG: config-tabline
" tabline {{{
let s:fugitive_statusline = ''
fun! s:fugitive_branch_wrapper() abort
    if !exists('*FugitiveStatusline')
        return ''
    endif

    let fugitive_statusline = FugitiveStatusline()
    if !empty(fugitive_statusline)
        let s:fugitive_statusline = fugitive_statusline
    endif
    return s:fugitive_statusline
endf

fun! MakeTableLine() abort
    let str = ''

    let lasttab = tabpagenr('$')
    let curtab = tabpagenr()
    " if lasttab != curtab
    for i in range(lasttab)
        if i + 1 == curtab
            let hl = '%#TabLineSel#'
            let hlinv = lasttab == i+1 ? '%#TabLineSelFillInv#' : '%#TabLineSelInv#'
        else
            let hl = '%#TabLine#'
            if i+1 == lasttab
                let hlinv = '%#TabLineFillInv#'
            elseif i+2 == curtab
                let hlinv = '%#TabLineInv#'
            else
                let hlinv = '%#TabLineNoOp#'
            endif
        endif

        let str .= hl
        let str .= '%'.(i+1).'T'
        let str .= '  '.(i+1).'  '
        let str .= hlinv
        if !exists('g:started_by_firenvim')
            let str .= ''
        endif
    endfor

    let str .= '%#TabLineFill#%T'
    " endif
    let str .= '%='
    if !exists('g:started_by_firenvim')
        let str .= ''
        let str .= '%#SpySl#'
        let str .= ' '
        let str .= s:fugitive_branch_wrapper() " bugged on empty files
        let str .= ' '
    endif

    return str
endf
" }}}

" command! Delete exe 'silent !rm -f %' | bd!

command! -range=% ReverseLines call nvim_buf_set_lines(bufnr('%'), <line1>-1, <line2>, 1, reverse(nvim_buf_get_lines(bufnr('%'), <line1>-1, <line2>, 1)))

nnoremap <silent> yow :call <SID>togglewrapping()<CR>
fun! s:togglewrapping()
    if &wrap
        set nowrap
        set nolinebreak
        silent! nunmap j
        silent! nunmap k
    else
        set wrap
        set linebreak
        nnoremap j gj
        nnoremap k gk
    endif
endf

" TODO make this work with plugin files that have source guards on them
command! -bar WS write|source %
command! StripWhitespace  %s/\v\s+$//g
command! Yankfname let @* = expand('%:p')
command! LTC call setqflist(getloclist(winnr()))
" fun! s:define_generic_command(cmd, executable) abort
"     exe 'command! '.a:cmd
"                 \. " call jobstart('".a:executable."', {"
"                 \.     "'on_exit': function('s:generic_on_exit'),"
"                 \.     "'tag': '".a:executable."'"
"                 \. '})'
" endf
" call s:define_generic_command('RubyTags', 'ripper-tags -R --exclude=vendor')
" call s:define_generic_command('Tags', 'ctags -R')
" fun! s:generic_on_exit(id, data, event) abort dict
"     echohl MoreMsg | echom self.tag.' finished with exit status: '.string(a:data) | echohl None
" endf

nnoremap <silent> yon :set number!<CR>
nnoremap <silent> yor :set relativenumber!<CR>
nnoremap <silent> yoc :set cursorcolumn!<CR>
nnoremap <silent> yoh :call ToggleOption('hlsearch')<CR>
nnoremap <silent> yos :call ToggleOption('spell')<CR>
nnoremap <silent> yob :call ToggleOption('scrollbind')<CR>
fun! ToggleOption(option) abort
    let on = str2nr(execute('echon &'.a:option))
    if on
        echohl Identifier
    else
        echohl String
    endif
    exe 'set '.a:option.'!'
    echo "'".a:option."'"
    echohl None
endf

" vim: foldmethod=marker foldlevel=1
