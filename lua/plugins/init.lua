local config_util = require("libs._set_config")
local load_conf = config_util.load_conf
local load_confs = config_util.load_confs

require('packer').startup(function(use)
  -- Basis
  use "wbthomason/packer.nvim"

  -- Themes
  use "kvrohit/mellow.nvim"
  use "kvrohit/rasmus.nvim"
  use "Yazeed1s/minimal.nvim"
  use "MomePP/plastic-nvim"
  use "ayu-theme/ayu-vim"
  use "metalelf0/jellybeans-nvim"
  use {
    "catppuccin/vim",
    as = "catppuccin"
  }

  -- Pre-require
  use "nvim-lua/plenary.nvim"
  use "mattn/webapi-vim"
  use "junegunn/fzf.vim"
  use "Shougo/deoplete.nvim"
  use "nvim-lua/popup.nvim"
  use "MunifTanjim/nui.nvim"
  use "nvim-tree/nvim-web-devicons"
  use "rcarriga/nvim-notify"
  use "smiteshp/nvim-navic"
  use "anuvyklack/middleclass"
  use "anuvyklack/animation.nvim"
  use "akinsho/nvim-toggleterm.lua"
  use "folke/trouble.nvim"
  use "rktjmp/lush.nvim"
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
  use "rust-lang/rust.vim"
  use "qnighy/lalrpop.vim"
  use "markwoodhall/vim-nuget"
  use "folke/neodev.nvim"
  use {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu"
  }

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

  use {
    'saecki/crates.nvim',
    tag = 'v0.3.0',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  }

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
  use "skywind3000/vim-quickui"
  use "notomo/piemenu.nvim"
  use "xiyaowong/nvim-transparent"
  use {
    "utilyre/barbecue.nvim",
    after = "nvim-web-devicons", -- NOTICE: keep this if you're using NvChad
  }
  use({
    "ghillb/cybu.nvim",
    branch = "main", -- timely updates
    config = function()
      local ok, cybu = pcall(require, "cybu")
      if not ok then
        return
      end
      cybu.setup()
    end,
  })

  -- Utility
  use "windwp/nvim-ts-autotag"
  use "m4xshen/autoclose.nvim"
  use "numToStr/FTerm.nvim"
  use "nvim-telescope/telescope.nvim"
  use "kevinhwang91/rnvimr"
  use "numToStr/Comment.nvim"
  use "folke/which-key.nvim"
  use "kazhala/close-buffers.nvim"
  use "mg979/vim-visual-multi"
  use "yuki-yano/fzf-preview.vim"
  use "tpope/vim-surround"
  use "simeji/winresizer"
  use "wellle/targets.vim"
  use "haya14busa/vim-edgemotion"
  use "machakann/vim-highlightedyank"
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

  -- Extension
  use {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require "telescope".load_extension("frecency")
    end,
    requires = { "kkharji/sqlite.lua" }
  }

  -- Fun
  use "seandewar/nvimesweeper"
end)

load_confs({
  -- Pre-require
  "tree-sitter",

  -- LSP
  "lspconfig",
  "lsp-format",
  "lspkind",
  "mason",
  "mason-lspconfig",
  "cmp",

  -- Visual
  "lualine",
  "barbar",
  "noice",
  "indent",

  -- Utility
  "fterm",
  "telescope",
  "comment",
  "nvim-tree",
})

require("fidget").setup()
require("scrollbar").setup()
require("autoclose").setup({})
require("which-key").setup()
