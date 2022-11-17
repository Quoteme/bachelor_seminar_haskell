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
badd +87 index.html
badd +101 css/impress-demo.css
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
exe '1resize ' . ((&lines * 32 + 38) / 77)
exe '2resize ' . ((&lines * 41 + 38) / 77)
argglobal
balt css/impress-demo.css
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
21
normal! zo
24
normal! zo
26
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
50
normal! zo
52
normal! zo
55
normal! zo
66
normal! zo
70
normal! zo
71
normal! zo
73
normal! zo
75
normal! zo
82
normal! zo
83
normal! zo
92
normal! zo
100
normal! zo
101
normal! zo
104
normal! zo
108
normal! zo
109
normal! zo
110
normal! zo
111
normal! zo
121
normal! zo
122
normal! zo
123
normal! zo
131
normal! zo
132
normal! zo
135
normal! zo
136
normal! zo
137
normal! zo
140
normal! zo
141
normal! zo
142
normal! zo
148
normal! zo
149
normal! zo
150
normal! zo
160
normal! zo
161
normal! zo
165
normal! zo
172
normal! zo
173
normal! zo
174
normal! zo
185
normal! zo
186
normal! zo
190
normal! zo
197
normal! zo
198
normal! zo
201
normal! zo
202
normal! zo
205
normal! zo
211
normal! zo
212
normal! zo
215
normal! zo
216
normal! zo
220
normal! zo
233
normal! zo
234
normal! zo
238
normal! zo
245
normal! zo
249
normal! zo
256
normal! zo
260
normal! zo
261
normal! zo
262
normal! zo
266
normal! zo
276
normal! zo
277
normal! zo
278
normal! zo
282
normal! zo
294
normal! zo
295
normal! zo
298
normal! zo
299
normal! zo
302
normal! zo
308
normal! zo
309
normal! zo
310
normal! zo
314
normal! zo
317
normal! zo
328
normal! zo
329
normal! zo
330
normal! zo
334
normal! zo
335
normal! zo
348
normal! zo
349
normal! zo
350
normal! zo
354
normal! zo
355
normal! zo
363
normal! zo
399
normal! zo
400
normal! zo
401
normal! zo
405
normal! zo
406
normal! zo
414
normal! zo
418
normal! zo
419
normal! zo
430
normal! zo
431
normal! zo
432
normal! zo
436
normal! zo
437
normal! zo
444
normal! zo
448
normal! zo
449
normal! zo
456
normal! zo
460
normal! zo
468
normal! zo
469
normal! zo
472
normal! zo
478
normal! zo
479
normal! zo
483
normal! zo
504
normal! zo
505
normal! zo
509
normal! zo
521
normal! zo
522
normal! zo
526
normal! zo
546
normal! zo
548
normal! zo
549
normal! zo
556
normal! zo
558
normal! zo
565
normal! zo
566
normal! zo
567
normal! zo
582
normal! zo
584
normal! zo
585
normal! zo
595
normal! zo
596
normal! zo
603
normal! zo
607
normal! zo
612
normal! zo
614
normal! zo
615
normal! zo
632
normal! zo
633
normal! zo
634
normal! zo
647
normal! zo
648
normal! zo
649
normal! zo
658
normal! zo
659
normal! zo
660
normal! zo
678
normal! zo
679
normal! zo
682
normal! zo
682
normal! zo
683
normal! zo
686
normal! zo
728
normal! zo
let s:l = 87 - ((23 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 87
normal! 039|
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
36
normal! zo
62
normal! zo
89
normal! zo
146
normal! zo
173
normal! zo
190
normal! zo
194
normal! zo
198
normal! zo
205
normal! zo
231
normal! zo
258
normal! zo
279
normal! zo
287
normal! zo
292
normal! zo
631
normal! zo
let s:l = 101 - ((20 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 101
normal! 016|
wincmd w
exe '1resize ' . ((&lines * 32 + 38) / 77)
exe '2resize ' . ((&lines * 41 + 38) / 77)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=44 winwidth=65
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
