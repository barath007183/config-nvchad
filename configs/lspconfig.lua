local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers =
{ "html", "cssls", "clangd", "pyright", "ts_ls", "dockerls", "docker_compose_language_service", "gopls" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off",
            },
        },
    },
}
