local M = {}

M.disabled = {
    n = {
        ["<leader>wk"] = "",
        ["<leader>ff"] = "",
        ["<leader>fb"] = "",
        ["<leader>ra"] = "",
        ["<leader>gb"] = "",
        ["<leader>fm"] = "",
    },
    i = {
        ["<C-j>"] = "",
    },
}

M.abc = {
    n = {
        ["<Space>"] = { "<Nop>" },
        ["<leader>w"] = { "<cmd>w<enter>" },
        ["<leader>y"] = { [["+y]] },
        ["<leader>Y"] = { [["+Y]] },
        ["<leader>gg"] = { "<cmd>TroubleToggle<cr>" },
        ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
        ["<leader>x"] = { "<cmd>!chmod +x %<CR>" },
    },
    i = {
        ["jj"] = { "<Esc>" },
    },
    v = {
        ["J"] = { ":m '>+1<CR>gv=gv" },
        ["K"] = { ":m '<-2<CR>gv=gv" },
        ["<C-d>"] = { "<C-d>zz" },
        ["C-u>"] = { "<C-u>zz" },
        ["n"] = { "nzzzv" },
        ["N"] = { "Nzzzv" },
        ["<leader>y"] = { [["+y]] },
    },
    x = {
        ["<leader>p"] = { [["_dP]] },
    },
}

M.telescope = {
    n = {
        ["<leader>sf"] = { "<cmd>Telescope find_files<cr>" },
        ["<leader><leader>"] = { "<cmd>Telescope buffers<cr>" },
        ["<leader>gb"] = { "<cmd>Telescope git_branches<cr>" },
        ["<leader>gc"] = { "<cmd>Telescope git_commits<cr>" },
        ["<leader>sg"] = { "<cmd>Telescope live_grep<cr>" },
    },
}

M.lspconfig = {
    n = {
        ["<leader>rn"] = {
            function()
                require("nvchad.renamer").open()
            end,
            "LSP rename",
        },
        ["<leader>fd"] = {
            function()
                vim.diagnostic.open_float { border = "rounded" }
            end,
            "Floating diagnostic",
        },
    },
}

M.nvterm = {
    t = {
        ["<C-\\>"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "Toggle horizontal term",
        },
    },
    n = {
        ["<C-\\>"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "Toggle horizontal term",
        },
    },
}

M.general = {
    n = {
        ["<leader>f"] = {
            function()
                vim.lsp.buf.format { async = true }
            end,
            "LSP formatting",
        },
    },
}

return M
