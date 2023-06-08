local M = {}

M.disabled = {
  n = {
    ["<leader>wk"] = "",
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

return M
