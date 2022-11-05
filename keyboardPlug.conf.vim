" EasyMotion binding
map <Space> <Plug>(easymotion-bd-f)

" NerdTree binding
map <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>

" Coc.Nvim

function! s:GoToDefinition()
  if CocAction('jumpDefinition')
    return v:true
  endif

  let ret = execute("silent! normal \<C-]>")
  if ret =~ "Error"
    call searchdecl(expand('<cword>'))
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> fg :call <SID>GoToDefinition()<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" UltiSnips
let g:UltiSnipsExpandTrigger="<A-s>"
let g:UltiSnipsJumpForwardTrigger="<A-l>"
let g:UltiSnipsJumpBackwardTrigger="<A-z>"
