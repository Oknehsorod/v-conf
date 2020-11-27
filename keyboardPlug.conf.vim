" EasyMotion binding
map <Space> <Plug>(easymotion-bd-f)

" NerdTree binding
map <C-n> :NERDTreeToggle<CR>

" Coc.Nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
