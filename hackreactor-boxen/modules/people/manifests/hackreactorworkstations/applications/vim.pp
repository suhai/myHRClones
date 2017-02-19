class people::hackreactorworkstations::applications::vim {

  notify { 'class people::hackreactorworkstations::applications::vim declared': }

  include macvim
  include vim

  vim::bundle { 'digitaltoad/vim-jade.git': }
  vim::bundle { 'hallison/vim-markdown': }
  vim::bundle { 'heavenshell/vim-jsdoc.git': }
  vim::bundle { 'kchmck/vim-coffee-script.git': }
  vim::bundle { 'kien/ctrlp.vim': }
  vim::bundle { 'mileszs/ack.vim.git': }
  vim::bundle { 'rodjek/vim-puppet.git': }
  vim::bundle { 'scrooloose/nerdtree': }
  vim::bundle { 'scrooloose/syntastic.git': }
  vim::bundle { 'slim-template/vim-slim.git': }
  vim::bundle { 'tomtom/tcomment_vim.git': }
  vim::bundle { 'tpope/vim-fugitive': }
  vim::bundle { 'tpope/vim-haml.git': }
  vim::bundle { 'vim-ruby/vim-ruby': }
  vim::bundle { 'vim-scripts/Rename.git': }
  vim::bundle { 'vim-scripts/YankRing.vim.git': }
  vim::bundle { 'vim-scripts/jQuery.git': }

}
