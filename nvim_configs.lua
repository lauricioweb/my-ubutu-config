-- Inicia o plugin manager 'packer.nvim'
require('packer').startup(function(use)
  -- Gerenciador de plugins
  use 'wbthomason/packer.nvim'

  -- Temas
  use 'morhetz/gruvbox'               -- Tema Gruvbox
  use 'arcticicestudio/nord-vim'       -- Tema Nord
  use 'dracula/vim'                    -- Tema Dracula
  
  -- Barra de status
  use 'nvim-lualine/lualine.nvim'

  -- File explorer
  use 'preservim/nerdtree'

  -- Ícones
  use 'kyazdani42/nvim-web-devicons'

  -- Autocompletar
  use 'neoclide/coc.nvim', {'branch': 'release'}  -- CoC para autocompletar
  
  -- LSP (Suporte para linguagem)
  use 'neovim/nvim-lspconfig'          -- Configuração de LSP
  use 'williamboman/mason.nvim'        -- Gerenciador de LSPs
  use 'williamboman/mason-lspconfig.nvim'

  -- Interface para autocompletar (pop-up)
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- Formatação automática
  use 'sbdchd/neoformat'
  
  -- Movimentação rápida no código
  use 'easymotion/vim-easymotion'

  -- Git integration
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- Syntax Highlighting
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Indent Guides
  use 'lukas-reineke/indent-blankline.nvim'

  -- Terminal integrado
  use 'voldikss/vim-floaterm'
  
  -- Comentários
  use 'tpope/vim-commentary'
end)

-- =====================
-- Configurações Gerais
-- =====================
vim.o.number = true                        -- Exibir números de linha
vim.o.relativenumber = true                -- Números relativos
vim.o.mouse = 'a'                          -- Habilitar o uso do mouse
vim.o.clipboard = 'unnamedplus'            -- Compartilhar o clipboard com o sistema
vim.o.autoindent = true                    -- Indentação automática
vim.o.expandtab = true                     -- Converter tabs em espaços
vim.o.tabstop = 4                          -- Número de espaços em uma tab
vim.o.shiftwidth = 4                       -- Tamanho da indentação
vim.o.termguicolors = true                 -- Habilitar cores no terminal

-- =====================
-- Configuração de Plugins
-- =====================

-- Tema
vim.cmd('colorscheme gruvbox')             -- Define o tema Gruvbox

-- Lualine (barra de status)
require('lualine').setup {
  options = { theme = 'gruvbox' }
}

-- Treesitter (Syntax Highlighting)
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = { enable = true },
}

-- NERDTree Configuração
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

-- Gitsigns (Git integração)
require('gitsigns').setup()

-- Mason (Gerenciador de LSP)
require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = { 'pyright', 'tsserver', 'lua_ls' }
}

-- Configuração básica do LSP para Python e JavaScript
local lspconfig = require('lspconfig')
lspconfig.pyright.setup{}
lspconfig.tsserver.setup{}
lspconfig.lua_ls.setup{}

-- Autoformatação ao salvar
vim.api.nvim_exec([[
  augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
  augroup END
]], true)

-- Comentários rápidos
vim.api.nvim_set_keymap('n', '<leader>/', ':Commentary<CR>', { noremap = true, silent = true })
