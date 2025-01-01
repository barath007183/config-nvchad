---@type ChadrcConfig
local M = {}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
M.ui = {
    theme = "chadracula",
    hl_override = {
        Type = { italic = true },
        SpecialComment = { italic = true },
        TSAttribute = { italic = true },
        TSParameter = { italic = true },
        TSLabel = { italic = true },
        TSVariableBuiltin = { italic = true },
        TSTagAttribute = { italic = true },
    },
}
return M
