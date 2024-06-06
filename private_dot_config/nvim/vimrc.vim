autocmd Filetype c,cpp,rust,python setlocal foldmethod=expr
autocmd Filetype c,cpp,rust,python setlocal foldexpr=nvim_treesitter#foldexpr()

filetype plugin indent on
syntax on

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
