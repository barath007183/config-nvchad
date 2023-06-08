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
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    opts = {
      defaults = {
        mappings = {
          n = {
            ["<leader>sf"] = { "<cmd>Telescope find_files<cr>" },
            ["<leader><ljader>"] = { "<cmd>Telescope find_buffers<cr>" },
            ["<leader>sb"] = { "<cmd>Telescope git_branches<cr>" },
            ["<leader>gc"] = { "<cmd>Telescope git_commits<cr>" },
            ["<leader>sg"] = { "<cmd>Telescope live_grep<cr>" },
          },
        },
      },
    },
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
