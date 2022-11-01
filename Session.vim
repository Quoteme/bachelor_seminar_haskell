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
badd +196 index.html
badd +210 css/impress-demo.css
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
exe '1resize ' . ((&lines * 40 + 32) / 65)
exe '2resize ' . ((&lines * 21 + 32) / 65)
argglobal
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
4
normal! zo
24
normal! zo
31
normal! zo
40
normal! zo
42
normal! zo
44
normal! zo
49
normal! zo
51
normal! zo
55
normal! zo
59
normal! zo
61
normal! zo
61
normal! zo
62
normal! zo
72
normal! zo
73
normal! zo
74
normal! zo
82
normal! zo
83
normal! zo
86
normal! zo
87
normal! zo
88
normal! zo
91
normal! zo
92
normal! zo
93
normal! zo
99
normal! zo
100
normal! zo
101
normal! zo
110
normal! zo
111
normal! zo
111
normal! zo
112
normal! zo
116
normal! zo
123
normal! zo
124
normal! zo
125
normal! zo
136
normal! zo
138
normal! zo
139
normal! zo
143
normal! zo
150
normal! zo
151
normal! zo
154
normal! zo
154
normal! zo
155
normal! zo
158
normal! zo
164
normal! zo
167
normal! zo
172
normal! zo
172
normal! zo
172
normal! zo
178
normal! zo
180
normal! zo
182
normal! zo
183
normal! zo
187
normal! zo
193
normal! zo
194
normal! zo
200
normal! zo
204
normal! zo
208
normal! zo
212
normal! zo
217
normal! zo
221
normal! zo
226
normal! zo
229
normal! zo
235
normal! zo
238
normal! zo
let s:l = 196 - ((28 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 196
normal! 034|
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
1
normal! zo
144
normal! zo
171
normal! zo
188
normal! zo
192
normal! zo
198
normal! zo
199
normal! zo
210
normal! zo
215
normal! zo
219
normal! zo
226
normal! zo
252
normal! zo
273
normal! zo
283
normal! zo
286
normal! zo
367
normal! zo
491
normal! zo
let s:l = 188 - ((2 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 188
normal! 02|
wincmd w
exe '1resize ' . ((&lines * 40 + 32) / 65)
exe '2resize ' . ((&lines * 21 + 32) / 65)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=40 winwidth=68
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
