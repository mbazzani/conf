{ config, pkgs, lib, ... }:

{
  enable = true;
  viAlias = true;
  vimAlias = true;
  defaultEditor = true;
  extraConfig = ''
    luafile /home/mb/conf/nvim/options.lua
    luafile /home/mb/conf/nvim/keybinds.lua
    '';
  plugins = with pkgs.vimPlugins; [
    # File tree
	{
      plugin = which-key-nvim;
	  config = "lua require('which-key').setup()";
    }
	{
      plugin = (nvim-treesitter.withPlugins (_: pkgs.tree-sitter.allGrammars));
	  config = "lua vim.treesitter.language.register('lua', 'python', 'nix', 'rust', 'bash', 'c')";
    }
	{
	  plugin = onedarkpro-nvim;
	  config = "lua vim.cmd(\"colorscheme onedark\")";
	}
	{
      plugin = nvim-tree-lua;
	  config = "lua require('nvim-tree').setup()";
	}
	{
      plugin = nvim-web-devicons;
	  config = "lua require('nvim-web-devicons').setup()";
	}
    {
      plugin = leap-nvim;
      config = "lua require('leap').add_default_mappings()";
    }
	{
      plugin = lualine-nvim;
	  config = "lua require('lualine').setup()";
	}
#    {
#      plugin = nvim-lspconfig;
#      config = ''
#        lua << EOF
#        require('lspconfig').rust_analyzer.setup{}
#        require('lspconfig').lua_ls.setup{}
#        require('lspconfig').rnix.setup{}
#        require('lspconfig').ccls.setup{}
#        require('lspconfig').pyright.setup{}
#        EOF
#      '';
#     }
      rust-tools-nvim
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
	  cmp-nvim-lua
	  cmp_luasnip
	  cmp-buffer
	  cmp-path
      luasnip
	  friendly-snippets
      {
        plugin = lsp-zero-nvim;
        config = "luafile /home/mb/conf/nvim/lsp.lua";
      }
  ];
}
