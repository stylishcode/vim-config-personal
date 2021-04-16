call plug#begin('~/.config/nvim/plugged')
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'ayu-theme/ayu-vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'ncm2/ncm2'
  Plug 'roxma/nvim-yarp'
  Plug 'ncm2/ncm2-bufword'
  Plug 'ncm2/ncm2-path'
  Plug 'dense-analysis/ale'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'neoclide/coc.nvim'
  Plug 'puremourning/vimspector'
call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu
set background=dark

" ativar sintaxe colorida
syntax on

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
" efetuar quebra de linha. Funciona bem para linguagem C
set smartindent
" Mostra o numero de linhas que é necessario para por exemplo usar o dd[n]
set relativenumber
" por padrão o vim armazena os últimos 50 comandos que você
" digitou em seu histórico. Eu sou exagerado, prefiro armazenar
" os últimos 5000
set history=5000
" esconde arquivos mas mantem ele no buffers
set hidden
"Abre um split que mostra modificações em todo o arquivo em tempo real, um refactor por exemplo
set inccommand=split
" ativar numeração de linha
set number
" destaca a linha em que o cursor está posicionado
" ótimo para quem não enxerga muito bem
set cursorline
" ativa o clique do mouse para navegação pelos documentos
set mouse=a
" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus
" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99
" atalho para colapsar/expandir
nnoremap <space> za
" atalhos para sair, e salvar e sair
map q :quit<cr>
map <C-s> :write<cr>
" remapeando a leaderkey
let mapleader="\<space>" 
"Atalho para o modo normal, não recursivo, para o comando não expandir em outros macros que já foram definidos
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
map <c-f> <Nop>
nnoremap <c-f> :Ag<space>
" Configurações visual-multi
map <c-d> <Nop>
let g:VM_default_mappings = 0
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'
let g:VM_maps['Find Subword Under'] = '<C-d>'
let g:VM_maps["Select Cursor Down"] = '<M-C-Down>'
let g:VM_maps["Select Cursor Up"]   = '<M-C-Up>'
" Configurações ncm2
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
 " Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Configurações ultisnippets
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
