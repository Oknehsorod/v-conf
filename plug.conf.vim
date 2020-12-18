" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Emmet
let g:user_emmet_leader_key='<C-Z>'

" EasyMotion
let g:easymotion#is_active = 0
function! EasyMotionCoc() abort
  if EasyMotion#is_active()
    let g:easymotion#is_active = 1
    silent! CocDisable
  else
    if g:easymotion#is_active == 1
      let g:easymotion#is_active = 0
      silent! CocEnable
    endif
  endif
endfunction
autocmd TextChanged,CursorMoved * call EasyMotionCoc()

