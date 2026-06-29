return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
      -- 1. O Mason DEVE ser configurado primeiro
    require("mason").setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })

    -- 2. Resgata as capabilities do nvim-cmp que configuramos na etapa anterior
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- 3. Configura a ponte (mason-lspconfig)
    require("mason-lspconfig").setup({
      -- Coloque aqui os LSPs que você quer que o Neovim instale sozinho 
      -- caso você abra o editor em uma máquina nova
      ensure_installed = { 
        "lua_ls", 
        "pyright", -- Exemplo para Python
      },
  
      -- 4. Automação: Aplica o setup e as capabilities em TODOS os LSPs instalados
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end,
    
        -- Exemplo: Se você quiser configurações customizadas para um LSP específico (como o Lua), 
        -- você pode declará-lo explicitamente aqui embaixo para sobrescrever o handler padrão acima:
        -- ["lua_ls"] = function()
        --   require("lspconfig").lua_ls.setup({
        --     capabilities = capabilities,
        --     settings = { Lua = { diagnostics = { globals = { "vim" } } } }
        --   })
        -- end,
      }
    })
  end
}
