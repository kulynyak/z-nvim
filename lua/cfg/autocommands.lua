-- autocmd! remove all autocommands, if entered under a group it will clear that group
vim.cmd([[

  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<cr>
    " highlight on yank
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 700})
    " don't auto commenting new lines
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
    autocmd BufWritePre * :%s/\s\+$//e
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
    " disable IndentLine for markdown files (avoid concealing)
  	autocmd FileType markdown let g:indentLine_enabled=0
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _go_files
    autocmd!
    " 4 spaces for Go files
    autocmd FileType go setlocal shiftwidth=4 tabstop=4
  augroup end

  augroup _some_files
    autocmd!
    " 2 spaces for these files
    autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

]])
