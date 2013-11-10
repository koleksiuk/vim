if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

if janus#is_plugin_enabled('ctrlp') && has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
endif

set ruler
set number
call pathogen#infect()

set background=dark
colorscheme codeschool
" colorscheme solarized


set nobackup
set noswapfile

set pastetoggle=<F2>

if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif

nnoremap <CR> :noh<CR><CR>

set vb

noremap <Leader>t :noautocmd vimgrep /TODO/j **/*.rb<CR>:cw<CR>
