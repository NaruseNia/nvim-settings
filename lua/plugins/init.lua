local config_util = require("libs._set_config")
local load_conf = config_util.load_conf

require('packer').startup(function(use)
  -- Basis
  use "wbthomason/packer.nvim"

  -- Themes
  use "kvrohit/mellow.nvim"
  use "kvrohit/rasmus.nvim"
  use "Yazeed1s/minimal.nvim"
  use {
    "catppuccin/vim",
    as = "catppuccin"
  }

  -- Pre-require
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"
  use "MunifTanjim/nui.nvim"
  use "nvim-tree/nvim-web-devicons"
  use "rcarriga/nvim-notify"
  use "smiteshp/nvim-navic"
  use "anuvyklack/middleclass"
  use "anuvyklack/animation.nvim"
  use "akinsho/nvim-toggleterm.lua"
  use "folke/trouble.nvim"
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Development
  use "tjdevries/nlua.nvim"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "onsails/lspkind.nvim"
  use "lukas-reineke/lsp-format.nvim"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"

  -- Complete
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/vim-vsnip"

  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-calc"
  use "hrsh7th/cmp-emoji"
  use "ray-x/cmp-treesitter"

  -- Visual
  use "nvim-lualine/lualine.nvim"
  use "yamatsum/nvim-nonicons"
  use "romgrk/barbar.nvim"
  use "folke/noice.nvim"
  use "gelguy/wilder.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "petertriho/nvim-scrollbar"
  use "nyngwang/murmur.lua"
  use "anuvyklack/windows.nvim"
  use "ethanjwright/toolwindow.nvim"
  use "j-hui/fidget.nvim"
  use {
    "utilyre/barbecue.nvim",
    after = "nvim-web-devicons", -- NOTICE: keep this if you're using NvChad
  }

  -- Utility
  use "windwp/nvim-ts-autotag"
  use "m4xshen/autoclose.nvim"
  use "numToStr/FTerm.nvim"
  use "nvim-telescope/telescope.nvim"
  use "kevinhwang91/rnvimr"
  use "numToStr/Comment.nvim"
  use "folke/which-key.nvim"
  use {
    "nvim-tree/nvim-tree.lua",
    tag = "nightly"
  }
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  use({
    'ray-x/navigator.lua',
    requires = {
      { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
    },
  })

  -- Fun
  use "seandewar/nvimesweeper"
end)

load_conf("tree-sitter")

load_conf("lspconfig")
load_conf("lsp-format")
load_conf("lspkind")
load_conf("mason")
load_conf("mason-lspconfig")
load_conf("cmp")

load_conf("lualine")
load_conf("barbar")
load_conf("noice")
load_conf("indent")
require("fidget").setup()
require("scrollbar").setup()

require("autoclose").setup({})
load_conf("fterm")
load_conf("telescope")
load_conf("comment")
load_conf("nvim-tree")
require("which-key").setup()
