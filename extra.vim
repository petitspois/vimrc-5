" set default indent
set ts=2 sw=2 et

" type fix
augroup type_fix
  au!
  au BufRead,BufNewFile *.md set ft=markdown
  au BufRead,BufNewFile *.tex,*.cls set ft=tex
augroup END

" indent fix
augroup indent_fix
  au!
  au FileType c,cpp,java set ts=4 sw=4
augroup END

" formatoptions fix
augroup fo_fix
  au!
  au FileType tex,text,markdown set fo+=mM tw=78
augroup END
