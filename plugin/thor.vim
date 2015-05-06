if (exists('g:loaded_thor') && g:loaded_thor) || v:version < 700 || &cp
  finish
endif
let g:loaded_thor = 1

au BufRead,BufNewFile *.thor setfiletype ruby

function! s:Thor(bang, args)
  let cmd = 'thor ' . a:args
  execute ':!' . cmd
endfunction

command! -bar -bang -nargs=* Thor call s:Thor(<bang>0,<q-args>)