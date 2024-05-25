print 'LSP Setup'
require("mason").setup()

local lspconfig = require "lspconfig"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

local servers = {
    tsserver = {}
}

local tools = {
    'stylua' -- Formatting lua code
}

local ensure_installed = vim.tbl_keys(servers or {})
vim.list_extend(ensure_installed, tools)


require("mason-tool-installer").setup { 
    ensure_installed = ensure_installed,    
    auto_update = false,
    run_on_start = true,
    start_delay = 3000,
    debounce_hours = 5,
    integrations = {
        ["mason-lspconfig"] = true
    }
}

require('mason-lspconfig').setup {
    handlers = {
      function(server_name)
        print("Installing " .. server_name)
        local server = servers[server_name] or {}
 
        -- This handles overriding only values explicitly passed
        -- by the server configuration above. Useful when disabling
        -- certain features of an LSP (for example, turning off formatting for tsserver)
        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
        require('lspconfig')[server_name].setup(server)
      end,
    },
}

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local bufnr = args.buf
      local client = assert(vim.lsp.get_client_by_id(args.data.client_id), "must have valid client")

      vim.opt_local.omnifunc = "v:lua.vim.lsp.omnifunc"
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = 0 })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
      vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })

      vim.keymap.set("n", "<space>cr", vim.lsp.buf.rename, { buffer = 0 })
      vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { buffer = 0 })

    end,
  })