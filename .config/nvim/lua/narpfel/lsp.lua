local lspconfig = require "lspconfig"

local on_attach = function()
    local opts = { buffer = 0, noremap = true, silent = true }
    local mappings = {
        K = "hover",
        ["<Leader>la"] = "code_action",
        ["<Leader>lk"] = "signature_help",
        ["<Leader>lr"] = "rename",
    }
    for keys, func in pairs(mappings) do
        vim.keymap.set("n", keys, vim.lsp.buf[func], opts)
    end
    vim.keymap.set("v", "<Leader>la", vim.lsp.buf.code_action, opts)

    local builtin = require("telescope.builtin")
    local mappings = {
        gr = "lsp_references",
        gci = "lsp_incoming_calls",
        gco = "lsp_outgoing_calls",
        gi = "lsp_implementations",
        gd = "lsp_definitions",
        gt = "lsp_type_definitions",
        ["<Leader>d"] = "diagnostics",
        ["<Leader>ls"] = "lsp_dynamic_workspace_symbols",
    }

    for keys, func in pairs(mappings) do
        vim.keymap.set("n", keys, builtin[func], opts)
    end
end

local capabilities = require "cmp_nvim_lsp"
    .default_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, language_server in pairs({"clangd", "hls", "rust_analyzer"}) do
    lspconfig[language_server].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
            ["rust-analyzer"] = {
                cargo = {
                    extraEnv = {
                        -- move r-a target to another directory to avoid it
                        -- breaking cargo’s caching when `RUSTFLAGS` change
                        CARGO_TARGET_DIR = "target/r-a",
                    },
                    features = "all",
                },
                cachePriming = { enable = false },
            },
        },
    })
end
