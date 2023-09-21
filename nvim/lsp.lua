--local lsp = require('lsp-zero').preset({
--  manage_nvim_cmp = {
--    set_sources = 'lsp',
--    set_basic_mappings = true,
--    set_extra_mappings = false,
--    use_luasnip = true,
--    set_format = true,
--    documentation_window = true,
--  }
--  })
--    lsp.on_attach(function(client, bufnr)
--       lsp.default_keymaps({buffer = bufnr})
--     end)
--lsp.setup_servers({'lua_ls', 'rnix', 'ccls', 'pyright', 'rust_analyzer'})
--local lsp = require('lsp-zero').preset({})
--lsp.setup()
--local lsp = require('lsp-zero')
--lsp.preset('recommended')
--lsp.ensure_installed({
--		'lua_ls',
--		'rnix',
--		'ccls',
--		'pyright',
--		'rust_analyzer'
--})
--lsp.setup()
--lsp.on_attach(function(client, bufnr)
--  lsp.default_keymaps({buffer = bufnr})
--end)
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', {buffer = bufnr})
end)

lsp.setup()
lsp.setup_servers({'lua_ls', 'rnix', 'ccls', 'pyright', 'rust_analyzer'})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
  },
--  mapping = {
--    ['<C-n>'] = cmp_action.luasnip_jump_forward(),
--    ['<C-p>'] = cmp_action.luasnip_jump_backward(),
--  }
})
