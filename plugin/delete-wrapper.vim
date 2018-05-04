" delete-wrapper.vim - Delete javascript wrappers
" Maintainer:       Alastair Lockie
" Version:          0.0.1

if exists('g:loaded_delete_wrapper') || &compatible
  finish
endif
let g:loaded_delete_wrapper = 1

autocmd FileType javascript nnoremap <leader>dw :normal$mx%kV`xj<k`x%dd`xdd<CR>
