function! s:Alternate(cmd)
  " get current file name
  let new_filename = s:ToggleFilename(@%)

  if filereadable(new_filename)
    execute a:cmd . " " . new_filename
  else
    let found_file = findfile(s:ToggleTail(expand('%:t')), "**/.")
    if filereadable(found_file)
      execute a:cmd . " " . found_file
    else
      call s:warn("Unable to find expected alternate '".new_filename."'")
    endif
  endif
endfunction

function! s:ToggleFilename(filename)
  if a:filename =~ "^lib/" || a:filename =~ "/lib/"
    if s:IsSpec(a:filename)
      return s:ToggleTail(s:Sub(s:Sub(a:filename, "^spec/", ""), "/spec/", "/"))
    else
      return s:ToggleTail(s:Sub(s:Sub(a:filename, "/lib/", "/spec/lib/"), "^lib/", "spec/lib/"))
    endif
  else
    if s:IsSpec(a:filename)
      return s:ToggleTail(s:Sub(s:Sub(a:filename, "^spec/", "app/"), "/spec/", "/app/"))
    else
      return s:ToggleTail(s:Sub(s:Sub(a:filename, "^app/", "spec/"), "/app/", "/spec/"))
    endif
  endif
endfunction

" Helper functions {{{
function! s:IsSpec(filename)
  if a:filename =~ "_spec\.rb$"
    return 1
  else
    return 0
  endif
endfunction

function! s:Sub(str,pat,rep)
  return substitute(a:str,'\v\C'.a:pat,a:rep,'')
endfunction

function! s:ToggleTail(filename)
  if s:IsSpec(a:filename)
    return s:Sub(a:filename, "_spec\.rb$", ".rb")
  else
    return s:Sub(a:filename, "\.rb$", "_spec.rb")
  endif
endfunction

function! s:warn(str)
  echohl WarningMsg
  echomsg a:str
  echohl None
  " Sometimes required to flush output
  echo ""
  let v:warningmsg = a:str
endfunction

" }}}

" Misc for autoload {{{
function! alt#Alternate(cmd)
  call s:Alternate(a:cmd)
endfunction
" }}}
