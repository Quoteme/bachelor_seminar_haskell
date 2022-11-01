let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Dokumente/dev/js/bachelor_seminar_haskell
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +62 index.html
badd +315 css/impress-demo.css
badd +60 ./notizen.md
argglobal
%argdel
$argadd index.html
$argadd css/impress-demo.css
edit index.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 47 + 38) / 77)
exe '2resize ' . ((&lines * 26 + 38) / 77)
argglobal
balt ./notizen.md
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
3
normal! zo
22
normal! zo
29
normal! zo
38
normal! zo
40
normal! zo
42
normal! zo
47
normal! zo
49
normal! zo
53
normal! zo
57
normal! zo
59
normal! zo
59
normal! zo
62
normal! zo
67
normal! zo
75
normal! zo
73
normal! zo
74
normal! zo
75
normal! zo
80
normal! zo
82
normal! zo
86
normal! zo
90
normal! zo
91
normal! zo
96
normal! zo
let s:l = 62 - ((30 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 62
normal! 016|
wincmd w
argglobal
if bufexists(fnamemodify("css/impress-demo.css", ":p")) | buffer css/impress-demo.css | else | edit css/impress-demo.css | endif
if &buftype ==# 'terminal'
  silent file css/impress-demo.css
endif
balt index.html
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
31
normal! zo
310
normal! zo
315
normal! zo
let s:l = 315 - ((58 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 315
normal! 024|
wincmd w
exe '1resize ' . ((&lines * 47 + 38) / 77)
exe '2resize ' . ((&lines * 26 + 38) / 77)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=47 winwidth=68
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
