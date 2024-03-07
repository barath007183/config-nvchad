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
    "whatyouhide/vim-gotham",
  },
  {
    "memgraph/cypher.vim",
  },
  { "echasnovski/mini.surround", version = "*", lazy = false },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
  },
  { "akinsho/git-conflict.nvim", version = "*", config = true, lazy = false },
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
  { "xiyaowong/transparent.nvim", lazy = false },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
