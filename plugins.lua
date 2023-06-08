return {
  {
    "folke/trouble.nvim",
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css", "bash", "go", "python", "javascript" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "pyright",
        "ember-language-server",
      },
    },
  },
}
