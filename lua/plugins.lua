require("lazy").setup ({
    {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  },
  
  {"nvim-treesitter/nvim-treesitter"},
  {"nvim-treesitter/nvim-treesitter-textobjects"},
  { 'rose-pine/neovim', name = 'rose-pine' },
  {'nvim-lualine/lualine.nvim'},
  {'cohama/lexima.vim'},
  {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section belw
  }
 },

 {"tpope/vim-repeat"},

 {"ggandor/leap.nvim"},

 {"nvim-lua/plenary.nvim"},

 {'nvim-telescope/telescope.nvim', tag = '0.1.1'},

 {'neovimhaskell/haskell-vim'},

 {'mrcjkb/haskell-tools.nvim'},

 {'MunifTanjim/nui.nvim'},

 {'nvim-neo-tree/neo-tree.nvim'},

 {'RRethy/vim-illuminate'},
  
 {'mfussenegger/nvim-dap'},
 {"ErichDonGubler/lsp_lines.nvim"}
})

require('leap').add_default_mappings()
vim.cmd('colorscheme rose-pine')

require("lsp_lines").setup()
vim.diagnostic.config({ virtual_text = false })



vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>id", require("lsp_lines").toggle, { desc = "Inline Diagnostics" })
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>tr', ":Neotree", {})
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.loader.enable()
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)
