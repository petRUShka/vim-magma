autocmd BufRead,BufNewFile *.mag  set filetype=magma set omnifunc=CompleteMagma

function! SilentFileGrep( leader, file )
  try
    exe 'vimgrep /^\s*' . a:leader . '.*/j ' . a:file
  catch /.*/
    echo "no matches"
  endtry
endfunction

fun! CompleteMagma(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    " grep the file and build list of results:
    let path = findfile("magma-builtins", &rtp)
    call SilentFileGrep( a:base, path )
    let matches = []
    for thismatch in getqflist()
      " trim leading whitespace
      call add(matches, thismatch.text)
    endfor
    call setqflist([])
    return matches
  endif
endfun
